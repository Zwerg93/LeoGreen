package at.htl.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
@Entity
@Table(name = "Quiz")
@Getter
@Setter
@ToString
public class QuizEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String topic;
    @OneToMany(mappedBy = "quiz")
    @ToString.Exclude
    List<QuestionEntity> questions = new ArrayList<>();

    public QuizEntity(Long id, String topic, List<QuestionEntity> questions) {
        this.id = id;
        this.topic = topic;
        this.questions = questions;
    }

    public QuizEntity() {
    }
}
