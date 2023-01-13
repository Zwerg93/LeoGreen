package at.htl.boundary;

import at.htl.game.GameDecoder;
import at.htl.game.GameEncoder;
import at.htl.game.GameMapper;
import at.htl.game.GameRepo;
import at.htl.model.entity.GameEntity;
import at.htl.model.entity.UserEntity;
import at.htl.model.pojo.Game;
import at.htl.user.UserRepo;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@ServerEndpoint(value = "/quiz-game-websocket/{gameId}/{name}",
        encoders = {GameEncoder.class})
@ApplicationScoped
public class GameWebSocket {

    /**
     * TODO List
     *  - Rollensystem
     *  - Auf Keywords horchen (z.B. "Start Game", "Next Question")
     *  - Variable
     *      - State: Number of Question
     *      - Students: Points, Name
     *      - Questions: Header, Answers, right Answer, typeIdentifier?, tags? (maybe important for analysing)
     *  - DTO's:
     *      - To Client:
     *          Students #T (List of Student Name)
     *          QuestionAnswer #T (Head, Questions, Image?)
     *          Answers (Id, Type?)
     *          Results (Points)
     *      - To Server:
     *          Keywords #T (z.B. "Start Game", "Next Question")
     *          Answers #S (answer id)
     */

    @Inject
    GameRepo gameRepo;
    @Inject
    UserRepo userRepo;

    Map<Long, Map<String, Session>> sessionByNameAndGameId = new ConcurrentHashMap<>();

    public GameWebSocket() {
    }

    public void startGame(Long gameId) {
        if (sessionByNameAndGameId.containsKey(gameId)) {
            return;
        }
        sessionByNameAndGameId.put(gameId, new ConcurrentHashMap<>());
    }

    public void removeGame(Long gameId) {
        //remove Player
        sessionByNameAndGameId.get(gameId).values().forEach(session -> {
            try {
                session.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });

        sessionByNameAndGameId.remove(gameId);
    }

    private void closeGame(Long gameId) {
        this.removeGame(gameId);
        this.gameRepo.deleteById(gameId);
    }

    @OnOpen
    @Transactional
    public void onOpen(Session session, @PathParam("gameId") Long gameId, @PathParam("name") String name) {
        GameEntity game = this.gameRepo.findById(gameId);

        if (game == null
                || !this.sessionByNameAndGameId.containsKey(gameId)
                || this.sessionByNameAndGameId.get(gameId).containsKey(name)
                || (!this.sessionByNameAndGameId.get(gameId).containsKey("admin") && !name.equals("admin"))
        ) {
            try {
                this.logErr(String.format("onOpen> Entry-Condition wasn't met", name));
                session.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            return;
        }

        log(String.format("onOpen> %s has connected to game#%o", name, gameId));
        this.sessionByNameAndGameId.get(gameId).put(name, session);

        if (name.equals("admin")) {
            handleAdminOpen(session, gameId);
            return;
        }

        UserEntity user = UserEntity.create(name, 0L, game);
        this.userRepo.persist(user);

        if (!name.equals("admin")){
            handlePlayerOpen(session, gameId);
            sendAdminGameState(gameId);
        }
    }

    private void handlePlayerOpen(Session session, Long gameId) {
        session.getAsyncRemote().sendObject(GameMapper.INSTANCE.gameFromEntity(gameRepo.findById(gameId)));
    }

    private void sendAdminGameState(Long gameId) {
        Session adminSession = this.sessionByNameAndGameId.get(gameId).get("admin");

        GameEntity gameEntity = gameRepo.findById(gameId);
        adminSession.getAsyncRemote().sendObject(GameMapper.INSTANCE.gameFromEntity(gameEntity));
    }

    @OnClose
    public void onClose(Session session, @PathParam("gameId") Long gameId, @PathParam("name") String name) {
        sessionByNameAndGameId.get(gameId).remove(name, session);
        log(String.format("onClose> %s has disconnected the game#%o", name, gameId));
    }

    @OnError
    public void onError(Session session, @PathParam("gameId") Long gameId, @PathParam("name") String name, Throwable throwable) {
        logErr(String.format("onError> User#%s in game#%o thrown error: " + throwable, name, gameId));
    }

    @OnMessage
    @Transactional
    public void onMessage(String message,
                          @PathParam("gameId") Long gameId,
                          @PathParam("name") String name,
                          Session session) {
        log(String.format("onMessage> User#%s in game#%o has send: %s", name, gameId, message));
        GameDecoder decoder = new GameDecoder();
        if (name.equals("admin") && decoder.willDecode(message)) {
            try {
                handleAdmin(decoder.decode(message), gameId);
            } catch (DecodeException e) {
                throw new RuntimeException(e);
            }
            return;
        }

        /*GameEntity game = gameRepo.findById(gameId);
        var question = game.getQuiz().getQuestions().get(game.getState());
        if (question
                .getAnswers()
                .stream()
                .map(AnswerEntity::getAnswer)
                .anyMatch(a -> a.equals(message))) {
            // TODO add score
            session.getAsyncRemote().sendText("voted");
            if (question.getCorrectAnswer().getAnswer().equals(message)) {
                session.getAsyncRemote().sendText("correct");
            } else {
                session.getAsyncRemote().sendText("wrong");
            }
        } else {
            session.getAsyncRemote().sendText("vote invalid");
        }*/
    }

    private void updateGameState() {

    }

    private void handleAdmin(Game game, Long gameId) {
        game.setId(gameId);
        GameEntity gameEntity = gameRepo.merge(GameMapper.INSTANCE.gameToEntity(game));

        // Update Players
        updatePlayer(game, gameId);
    }

    private void updatePlayer(Game game, Long gameId) {
        this.sessionByNameAndGameId.get(gameId).values().forEach(session -> {
            session.getAsyncRemote().sendObject(game);
        });
    }

    private void handleAdminOpen(Session session, Long gameId) {
        session.getAsyncRemote().sendObject(GameMapper.INSTANCE.gameFromEntity(gameRepo.findById(gameId)));
    }


    private void log(String s) {
        System.out.println("quiz-game-websocket: ".concat(s));
    }

    private void logErr(String s) {
        System.err.println("quiz-game-websocket: ".concat(s));
    }

    public void updateAll() {
    }

    public void updateGame(Long gameId) {
        this.updateGame(gameId);
        //TODO - Admin Id has to be saved somewhere so we can update them here (but we could also say that game state only has to be changed when he updates so maybe we don't need it)
    }
}
