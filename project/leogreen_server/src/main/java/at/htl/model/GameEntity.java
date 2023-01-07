package at.htl.model;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "Game")
public class GameEntity extends PanacheEntityBase {
    @Id
    public Integer code;
    public Boolean started;
    @OneToMany(mappedBy = "game")
    public List<PlayerEntity> players;
    @OneToMany(mappedBy = "game")
    public List<QuestionEntity> questions;
    public Integer currentQuestion;

    public GameEntity(Integer code, Boolean started, List<PlayerEntity> players, List<QuestionEntity> questions, Integer currentQuestion) {
        this.code = code;
        this.started = started;
        this.players = players;
        this.questions = questions;
        this.currentQuestion = currentQuestion;
    }

    public GameEntity() {

    }
}

