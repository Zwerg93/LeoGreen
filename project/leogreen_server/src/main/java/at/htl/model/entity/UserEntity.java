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
    @ManyToOne
    @JoinColumn(name = "game_id")
    GameEntity game;

    public UserEntity(Long id, String name, Long points, GameEntity game) {
        this.id = id;
        this.name = name;
        this.points = points;
        this.game = game;
    }

    public UserEntity() {
    }

    public static UserEntity create(String name, Long points, GameEntity game) {
        UserEntity user = new UserEntity();
        user.setName(name);
        user.setPoints(points);
        user.setGame(game);

        game.addToUserList(user);

        return user;
    }
}
