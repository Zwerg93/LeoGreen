package at.htl.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "GameScore")
@Getter
@Setter
@ToString
public class GameScoreEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @ManyToOne
    GameEntity game;
    @ManyToOne
    TagEntity tag;
    Short points;

    public GameScoreEntity() {
    }

    public GameScoreEntity(GameEntity game, TagEntity tag, Short points) {
        this.game = game;
        this.tag = tag;
        this.points = points;
    }
}
