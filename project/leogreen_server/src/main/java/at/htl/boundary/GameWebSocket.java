package at.htl.boundary;

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

@ServerEndpoint("/quiz-game-websocket/{quizId}/{name}")
@ApplicationScoped
public class GameWebSocket {


    Map<Long, Map<String, Session>> sessionByNameAndGameRoomId = new ConcurrentHashMap<>();

    public Long startGame(Long quizType){
        Long newGameRoomId = sessionByNameAndGameRoomId.keySet().stream().mapToLong(Long::longValue).max().orElse(-1) + 1L;
        sessionByNameAndGameRoomId.put(newGameRoomId, new ConcurrentHashMap<>());
        return newGameRoomId;
    }

    public void removeGame(Long quizId){
        sessionByNameAndGameRoomId.remove(quizId);
    }

    private void removePlayerOfGame(Long quizId, String name) {
        sessionByNameAndGameRoomId.get(quizId).remove(name);
    }

    @OnOpen
    public void onOpen(Session session, @PathParam("quizId") Long quizId , @PathParam("name") String name) throws IOException {
        var gameRoom = sessionByNameAndGameRoomId.get(quizId);
        if (gameRoom == null) {
            session.getAsyncRemote().sendText("Game not started");
            session.close();
            return;
        }
        if (gameRoom.get(name) != null) {
            session.getAsyncRemote().sendText("Username already exists");
            return;
        }
        gameRoom.put(name, session);
    }

    @OnClose
    public void onClose(Session session, @PathParam("quizId") Long quizId , @PathParam("name") String name) {
        sessionByNameAndGameRoomId.get(quizId).remove(name, session);
    }

    @OnError
    public void onError(Session session, @PathParam("quizId") Long quizId , @PathParam("name") String name, Throwable throwable) {
    }

    @OnMessage
    public void onMessage(String message, @PathParam("quizId") Long quizId , @PathParam("name") String name) {
    }


    private void print(String s){
        System.out.println("quiz-game-websocket: ".concat(s));
    }
    private void printErr(String s) {
        System.err.println("quiz-game-websocket: ".concat(s));
    }
}
