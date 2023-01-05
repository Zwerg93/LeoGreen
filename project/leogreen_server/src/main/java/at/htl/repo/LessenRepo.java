package at.htl.repo;

import at.htl.model.Lesson;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.TypedQuery;
import java.util.List;


@ApplicationScoped
public class LessenRepo implements PanacheRepository<Lesson> {


    public List<Lesson> search(String text) {

        TypedQuery<Lesson> query = getEntityManager().createQuery("" + "select l from Lesson l where lower(l.title) like :text or lower(l.content) like :text or " + "lower(l.description) like :text ", Lesson.class);
        query.setParameter("text", "%" + text + "%");
        return query.getResultList();
    }
}
