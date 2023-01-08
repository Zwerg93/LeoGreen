package at.htl.model.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class Quiz implements Serializable {
    Long id;
    String topic;
    List<Question> questions;

    public Quiz(Long id, String topic, List<Question> questions) {
        this.id = id;
        this.topic = topic;
        this.questions = questions;
    }

    public Quiz() {
    }
}
