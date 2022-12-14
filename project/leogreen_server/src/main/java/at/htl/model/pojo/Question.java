package at.htl.model.pojo;

import java.io.Serializable;

public class Question implements Serializable {
    String header;
    Answer[] answers;

    public Question(String header, Answer[] answers) {
        this.header = header;
        this.answers = answers;
    }
}
