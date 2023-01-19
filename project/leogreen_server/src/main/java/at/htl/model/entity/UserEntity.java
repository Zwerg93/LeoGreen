package at.htl.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
@Entity
@Table(name = "Users")
@Getter
@Setter
@ToString
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String name;
    Long points;
    Boolean hasVoted;
    @ManyToOne
    @JoinColumn(name = "game_id")
    GameEntity game;

    public UserEntity(Long id, String name, Long points, GameEntity game, Boolean hasVoted) {
        this.id = id;
        this.name = name;
        this.points = points;
        this.game = game;
        this.hasVoted = hasVoted;
    }

    public UserEntity() {
    }

    public static UserEntity create(String name, Long points, GameEntity game, Boolean hasVoted) {
        UserEntity user = new UserEntity();
        user.setName(name);
        user.setPoints(points);
        user.setGame(game);
        user.setHasVoted(hasVoted);

        return user;
    }
}
