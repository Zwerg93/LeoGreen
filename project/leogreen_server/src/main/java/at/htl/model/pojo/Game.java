package at.htl.model.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;

public class Game implements Serializable {
    Integer code;
    Boolean started;
    Integer currentQuestion;

    public Game(Integer code, Boolean started, Integer currentQuestion) {
        this.code = code;
        this.started = started;
        this.currentQuestion = currentQuestion;
    }
}

