package at.htl.model.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class Question implements Serializable {
    Long id;
    String title;
    List<Answer> answers;
    Answer correctAnswer;

    public Question(Long id, String title, List<Answer> answers, Answer correctAnswer) {
        this.id = id;
        this.title = title;
        this.answers = answers;
        this.correctAnswer = correctAnswer;
    }
}
