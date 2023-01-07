package at.htl.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Anwer")
public class AnswerEntity extends PanacheEntity {
    public String text;
    public Boolean validAnswer;
    @ManyToOne
    @JoinColumn(name = "question_id")
    public QuestionEntity question;

    public AnswerEntity(String text, Boolean validAnswer, QuestionEntity question) {
        this.text = text;
        this.validAnswer = validAnswer;
        this.question = question;
    }

    public AnswerEntity() {

    }
}
