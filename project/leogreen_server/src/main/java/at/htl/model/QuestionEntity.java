package at.htl.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Question")
public class QuestionEntity extends PanacheEntity {
    public String header;
    @OneToMany(mappedBy = "question")
    public List<AnswerEntity> answers;

    @ManyToOne
    @JoinColumn(name = "game_code")
    public GameEntity game;

    public QuestionEntity(String header, List<AnswerEntity> answers, GameEntity game) {
        this.header = header;
        this.answers = answers;
        this.game = game;
    }

    public QuestionEntity() {

    }
}
