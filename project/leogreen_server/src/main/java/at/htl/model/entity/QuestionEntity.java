package at.htl.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Question")
@Getter
@Setter
@ToString
public class QuestionEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @ManyToOne
    @JoinColumn(name = "quiz_id")
    QuizEntity quiz;
    String title;
    @OneToMany(mappedBy = "question")
    @ToString.Exclude
    List<AnswerEntity> answers = new ArrayList<>();
    @OneToOne
    @JoinColumn(name = "correct_answer")
    AnswerEntity correctAnswer;

    public QuestionEntity(Long id, QuizEntity quiz, String title, List<AnswerEntity> answers, AnswerEntity correctAnswer) {
        this.id = id;
        this.quiz = quiz;
        this.title = title;
        this.answers = answers;
        this.correctAnswer = correctAnswer;
    }

    public QuestionEntity() {
    }
}
