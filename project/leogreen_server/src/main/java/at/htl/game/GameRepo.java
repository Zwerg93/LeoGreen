package at.htl.game;

import at.htl.model.entity.GameEntity;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class GameRepo implements PanacheRepository<GameEntity> {


}
