package at.htl.model.pojo;

import java.io.Serializable;
import java.util.List;

public class Question implements Serializable {
    String header;
    List<Answer> answers;

    public Question(String header, List<Answer> answers) {
        this.header = header;
        this.answers = answers;
    }
}
