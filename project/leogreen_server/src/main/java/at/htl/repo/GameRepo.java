package at.htl.repo;

import at.htl.model.Game;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class GameRepo implements PanacheRepository<Game> {
}
