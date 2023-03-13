package at.htl.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Game")
@Getter
@Setter
@ToString
public class GameEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    Integer state;
    @OneToMany(mappedBy = "game")
    @ToString.Exclude
    List<UserEntity> users = new ArrayList<>();
    @ManyToOne
    QuizEntity quiz;
    @OneToMany(mappedBy = "game")
    @ToString.Exclude
    List<GameScoreEntity> gameScores = new ArrayList<>();

    public GameEntity(Long id, Integer state, List<UserEntity> users, QuizEntity quiz) {
        this.id = id;
        this.state = state;
        this.users = users;
        this.quiz = quiz;
    }

    public GameEntity() {
    }

    public static GameEntity create(int status, QuizEntity quiz) {
        GameEntity game = new GameEntity();
        game.setState(status);
        game.setQuiz(quiz);
        return game;
    }

    public void addToUserList(UserEntity newUser) {
        this.users.add(newUser);
    }
}
