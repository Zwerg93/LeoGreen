package at.htl.game;

import at.htl.model.entity.GameEntity;
import at.htl.model.pojo.Statistics;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class GameRepo implements PanacheRepository<GameEntity> {

    public GameEntity merge(GameEntity game) {
        return getEntityManager().merge(game);
    }
    public List<Statistics> getStatistics(GameEntity game) {
        var q = getEntityManager().createQuery("select new at.htl.model.pojo.Statistics(gs.tag.tag, avg(gs.points)) from GameScoreEntity gs " +
                "where gs.game.id = :gameId " +
                "group by gs.game, gs.tag.tag", Statistics.class);

        return q.getResultList();
    }
}
