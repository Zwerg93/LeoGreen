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
    List<QuestionEntity> questionList = new ArrayList<>();

    public QuizEntity(Long id, String topic, List<QuestionEntity> questionList) {
        this.id = id;
        this.topic = topic;
        this.questionList = questionList;
    }

    public QuizEntity() {
    }
}
