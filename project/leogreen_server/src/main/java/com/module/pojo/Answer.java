package com.module.pojo;

import java.io.Serializable;

public class Answer implements Serializable {
    String text;
    Boolean validAnswer;

    public Answer(String text, Boolean validAnswer) {
        this.text = text;
        this.validAnswer = validAnswer;
    }
}
