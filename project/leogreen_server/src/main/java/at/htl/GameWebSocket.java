package at.htl;

import at.htl.model.Game;
import at.htl.model.User;
import at.htl.repo.GameRepo;
import at.htl.repo.UserRepo;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

import static java.util.Objects.requireNonNull;

@ServerEndpoint(value = "/quiz-game-websocket/{game_id}/{name}")
@ApplicationScoped
public class GameWebSocket {

    /** TODO List
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
    public void startGame(Long game_id){
        sessionByNameAndGameId.put(game_id, new ConcurrentHashMap<>());
    }
    public void removeGame(Long game_id){
        //remove Player
        sessionByNameAndGameId.get(game_id).values().stream().forEach(value -> {
            try {
                value.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });

        sessionByNameAndGameId.remove(game_id);
    }

    private void closeGame(Long game_id){
        this.removeGame(game_id);
        this.gameRepo.deleteById(game_id);
    }


    @OnOpen
    public void onOpen(Session session,@PathParam("game_id") Long game_id , @PathParam("name") String name) {
        Game game = this.gameRepo.findById(game_id);

        if (game == null
                || !this.sessionByNameAndGameId.containsKey(game_id)
                || !this.sessionByNameAndGameId.get(game_id).containsKey(name)){
            try {
                session.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        print(String.format("onOpen> %s has connected to game#%o", name, game_id));
        this.sessionByNameAndGameId.get(game_id).put(name, session);

        User user = User.create("name", 0L, game);
        this.userRepo.persist(user);

        this.sendAdminUserList(game_id);
    }

    private void sendAdminUserList(Long game_id) {
        Session adminSession = this.sessionByNameAndGameId.get(game_id).get("Admin");

        if (adminSession == null){
            this.printErr("No admin present in the game");
            this.closeGame(game_id);
        }

        List<String> playerNameList = this.userRepo.list("game_id", game_id).stream().map(User::getName).toList();
        adminSession.getAsyncRemote().sendText(playerNameList.toString());
    }

    @OnClose
    public void onClose(Session session,@PathParam("game_id") Long game_id , @PathParam("name") String name) {
        try {
            session.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }finally {
            printErr(String.format("onClose> %s has disconnected the game#%o", name, game_id));
        }
    }

    @OnError
    public void onError(Session session,@PathParam("game_id") Long game_id , @PathParam("name") String name, Throwable throwable) {
        printErr(String.format("onError> User#%s in game#%o thrown error: "+throwable, name, game_id));
    }

    @OnMessage
    public void onMessage(String message, @PathParam("game_id") Long game_id , @PathParam("name") String name) {
        print(String.format("onMessage> User#%s in game#%o has send: %s", name, game_id, message));
    }


    private void print(String s){
        System.out.println("quiz-game-websocket: ".concat(s));
    }
    private void printErr(String s) {
        System.err.println("quiz-game-websocket: ".concat(s));
    }
}
