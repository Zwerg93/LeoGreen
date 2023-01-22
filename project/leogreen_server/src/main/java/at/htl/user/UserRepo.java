package at.htl.user;

import at.htl.model.entity.UserEntity;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import io.quarkus.panache.common.Parameters;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class UserRepo implements PanacheRepository<UserEntity> {
    public void merge(UserEntity user) {
        this.getEntityManager().merge(user);
    }

    public void setRefreshVoteRights(Long gameId) {
        this.getEntityManager().createQuery("""
                update UserEntity u set u.hasVoted = false where u.game.id = :gameId
            """).setParameter("gameId", gameId)
                .executeUpdate();
    }

    public long calcPoints(Long gameId) {
        long players = this.count("game.id = :id", Parameters.with("id", gameId));
        long voters = this.count("hasVoted = true and game.id = :id", Parameters.with("id", gameId));

        return 1000 - (500 / (players - 1)) * (voters - 1);
    }
}
