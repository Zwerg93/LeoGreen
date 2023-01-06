package at.htl.model.pojo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

public class Game implements Serializable {
    Integer code;
    Boolean started;
    List<Player> players;
    List<Question> questions;
    Integer currentQuestion;

    public Game(Integer code, Boolean started, List<Player> players, List<Question> questions, Integer currentQuestion) {
        this.code = code;
        this.started = started;
        this.players = players;
        this.questions = questions;
        this.currentQuestion = currentQuestion;
    }
}

