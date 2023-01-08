package at.htl.boundary;

import at.htl.game.GameDecoder;
import at.htl.game.GameEncoder;
import at.htl.game.GameMapper;
import at.htl.model.entity.GameEntity;
import at.htl.model.entity.UserEntity;
import at.htl.game.GameRepo;
import at.htl.user.UserRepo;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@ServerEndpoint(value = "/quiz-game-websocket/{gameId}/{name}",
        encoders = {GameEncoder.class},
        decoders = {GameDecoder.class})
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
        //Testing
        sessionByNameAndGameId.put(1L, new ConcurrentHashMap<>());
    }

    public void startGame(Long gameId) {
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
                || this.sessionByNameAndGameId.get(gameId).containsKey(name)) {
            try {
                session.getAsyncRemote().sendText("User with name already exists");
                session.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            return;
        }

        if (name.equals("admin")) {
            handleAdminOpen(session, gameId);
            return;
        }

        log(String.format("onOpen> %s has connected to game#%o", name, gameId));
        this.sessionByNameAndGameId.get(gameId).put(name, session);

        UserEntity user = UserEntity.create("name", 0L, game);
        this.userRepo.persist(user);

        this.sendAdminUserList(gameId);
    }

    private void sendAdminUserList(Long gameId) {
        Session adminSession = this.sessionByNameAndGameId.get(gameId).get("Admin");

        if (adminSession == null) {
            this.logErr("No admin present in the game");
            this.closeGame(gameId);
        }
        List<String> playerNameList = this.userRepo.list("gameId", gameId).stream().map(UserEntity::getName).toList();

        adminSession.getAsyncRemote().sendText(playerNameList.toString());
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
    public void onMessage(String message, @PathParam("gameId") Long gameId, @PathParam("name") String name) {
        log(String.format("onMessage> User#%s in game#%o has send: %s", name, gameId, message));
        if (name.equals("admin")) {
            handleAdmin(message, gameId);
            return;
        }

        // TODO handle player
    }

    private void updateGameState() {

    }

    private void handleAdmin(String message, Long gameId) {

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
}
