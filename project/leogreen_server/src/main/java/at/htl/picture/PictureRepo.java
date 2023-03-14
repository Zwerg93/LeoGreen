package at.htl.picture;

import at.htl.model.entity.PictureEntity;
import io.quarkus.hibernate.orm.panache.PanacheRepositoryBase;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PictureRepo implements PanacheRepositoryBase<PictureEntity, String> {
    public void merge(PictureEntity picture) {
        getEntityManager().merge(picture);
    }
}
