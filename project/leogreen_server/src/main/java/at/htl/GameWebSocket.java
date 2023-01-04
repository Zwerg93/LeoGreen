package at.htl;

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

@ServerEndpoint("/quiz-game-websocket/{quiz_id}/{name}")
@ApplicationScoped
public class GameWebSocket {


    Map<Long, Map<String, Session>> sessionByNameAndGameRoomId = new ConcurrentHashMap<>();

    public Long startGame(Long quiz_type){

    }

    public void removeGame(Long quizId){

    }

    private void removePlayerOfGame(Long quizId) {
    }

    @OnOpen
    public void onOpen(Session session,@PathParam("quiz_id") Long quiz_id , @PathParam("name") String name) {
    }

    @OnClose
    public void onClose(Session session,@PathParam("quiz_id") Long quiz_id , @PathParam("name") String name) {
    }

    @OnError
    public void onError(Session session,@PathParam("quiz_id") Long quiz_id , @PathParam("name") String name, Throwable throwable) {
    }

    @OnMessage
    public void onMessage(String message, @PathParam("quiz_id") Long quiz_id , @PathParam("name") String name) {
    }


    private void print(String s){
        System.out.println("quiz-game-websocket: ".concat(s));
    }
    private void printErr(String s) {
        System.err.println("quiz-game-websocket: ".concat(s));
    }
}
