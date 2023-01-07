package at.htl.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "Answer")
@Getter
@Setter
@ToString
public class AnswerEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @ManyToOne
    QuestionEntity question;
    String answer;

    public AnswerEntity(Long id, QuestionEntity question, String answer) {
        this.id = id;
        this.question = question;
        this.answer = answer;
    }

    public AnswerEntity() {
    }
}
