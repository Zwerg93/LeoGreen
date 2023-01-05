package at.htl.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "`Users`")
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String name;
    Long points;
    @ManyToOne
    Game game;

    public static User create(String name, Long points, Game game) {
        User user = new User();
        user.setName(name);
        user.setPoints(points);
        user.setGame(game);

        game.addToUserList(user);

        return user;
    }
}
