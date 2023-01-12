package at.htl.user;

import at.htl.model.entity.UserEntity;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class UserRepo implements PanacheRepository<UserEntity> {
    public void merge(UserEntity user) {
        this.getEntityManager().merge(user);
    }
}
