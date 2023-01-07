package at.htl.repo;

import at.htl.model.ImgPath;
import at.htl.model.Lesson.Picture;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import io.quarkus.hibernate.orm.panache.PanacheRepositoryBase;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PictureRepo implements PanacheRepositoryBase<Picture, String> {
}
