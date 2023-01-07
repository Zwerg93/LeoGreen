package at.htl.model.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;

public class Game implements Serializable {
    Integer code;
    Boolean started;
    public ArrayList<Player> players;
    Question[] questions;
    Integer currentQuestion;

    public Game(Integer code, Boolean started, Player[] players, Question[] questions, Integer currentQuestion) {
        this.code = code;
        this.started = started;
        this.players.addAll(Arrays.stream(players).toList());
        this.questions = questions;
        this.currentQuestion = currentQuestion;
    }
}

