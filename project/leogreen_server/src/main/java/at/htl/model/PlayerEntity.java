package at.htl.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Player")
public class PlayerEntity extends PanacheEntity {
    public String name;
    @ManyToOne
    @JoinColumn(name = "game_id")
    public GameEntity game;

    public PlayerEntity(String name, GameEntity game) {
        this.name = name;
        this.game = game;
    }

    public PlayerEntity() {

    }
}
