package at.htl.model.pojo;

import java.io.Serializable;

public class Game implements Serializable {
    Integer code;
    Boolean started;
    Player player;
    Selection[] selections;
    Question[] questions;
    Integer currentQuestion;

    public Game(Integer code, Boolean started, Player player, Selection[] selections, Question[] questions, Integer currentQuestion) {
        this.code = code;
        this.started = started;
        this.player = player;
        this.selections = selections;
        this.questions = questions;
        this.currentQuestion = currentQuestion;
    }
}

