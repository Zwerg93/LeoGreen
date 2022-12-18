package at.htl;

import at.htl.model.pojo.Answer;
import at.htl.model.pojo.Game;
import at.htl.model.pojo.Player;
import at.htl.model.pojo.Question;

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
import java.util.Comparator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static java.util.Objects.requireNonNull;

@ServerEndpoint("/quiz-student-websocket/{quiz_id}/{name}")
@ApplicationScoped
public class StartWebSocket {

    @Inject
    GameRoomController gameRoomController;

    Map<Long, Map<String, Session>> sessionByNameAndGameRoomId = new ConcurrentHashMap<>();

    public Long startGame(Long quiz_type){
        Long newQuizId = gameRoomController.gameRooms.keySet().stream().max(Comparator.naturalOrder()).orElse(0L) + 1L;
        gameRoomController.startGameRoom(newQuizId, quiz_type);
        sessionByNameAndGameRoomId.put(newQuizId, new ConcurrentHashMap<>());
        return newQuizId;
    }

    public void removeGame(Long quizId){
        this.removePlayerOfGame(quizId);
        gameRoomController.gameRooms.remove(quizId);
        sessionByNameAndGameRoomId.remove(quizId);
    }

    private void removePlayerOfGame(Long quizId) {
        this.sessionByNameAndGameRoomId.get(quizId).values().forEach(session -> {
            try {
                session.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
    }

    @OnOpen
    public void onOpen(Session session,@PathParam("quiz_id") Long quiz_id , @PathParam("name") String name) {
        if (!this.sessionByNameAndGameRoomId.containsKey(quiz_id)){
            printErr("connect> Student: "+name+" connected to "+ quiz_id + ", but gameroom does not exist");
            return;
        }

        this.sessionByNameAndGameRoomId.get(quiz_id).put(name, session);
        print("connect> Student: "+name+" connected to "+ quiz_id);
    }

    @OnClose
    public void onClose(Session session,@PathParam("quiz_id") Long quiz_id , @PathParam("name") String name) {
        try {
            session.close();
            this.sessionByNameAndGameRoomId.get(quiz_id).remove(name);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        System.out.println("close> "+name+" in game room " + quiz_id);
    }

    @OnError
    public void onError(Session session,@PathParam("quiz_id") Long quiz_id , @PathParam("name") String name, Throwable throwable) {
        System.out.println("onError> " + name + ": " + throwable);
    }

    @OnMessage
    public void onMessage(String message, @PathParam("quiz_id") Long quiz_id , @PathParam("name") String name) {
        System.out.println("onMessage> " + name + ": " + message);
    }


    private void print(String string){
        System.out.println("quiz-student-websocket: ".concat(string));
    }
    private void printErr(String s) {
        System.err.println("quiz-student-websocket: ".concat(s));
    }
}
