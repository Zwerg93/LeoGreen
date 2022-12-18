package at.htl;

import at.htl.model.pojo.Answer;
import at.htl.model.pojo.Game;
import at.htl.model.pojo.Player;
import at.htl.model.pojo.Question;

import javax.enterprise.context.ApplicationScoped;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

//I think we need a database, this is way to complicated
@ApplicationScoped
public class GameRoomController {
    Map<Long, Game> gameRooms = new ConcurrentHashMap<>();


    public void startGameRoom(Long newQuizId, Long quiz_type) {
        gameRooms.put(newQuizId, gameConstructor(newQuizId, quiz_type.intValue()));
    }

    public Game gameConstructor(Long newQuizId, Integer quiz_type){
        switch(quiz_type){
            default:
                return new Game(newQuizId.intValue(),
                        Boolean.FALSE, new Player[]{},
                        new Question[]{new Question("What is the best quiz app?", new Answer[]{new Answer("Leogreen", true), new Answer("Kahoot", false)})}, 0);
        }
    }
}
