package at.htl.lesson;

import at.htl.model.pojo.Card;

import at.htl.model.entity.LessonEntity;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.TypedQuery;
import java.util.List;


@ApplicationScoped
public class LessonRepo implements PanacheRepository<LessonEntity> {


    public List<LessonEntity> search(String text) {
        TypedQuery<LessonEntity> query = getEntityManager().createQuery("select l from LessonEntity l " +
                "where lower(l.title) like :text " +
                "or lower(l.content) like :text " +
                "or lower(l.description) like :text",
                LessonEntity.class);
        query.setParameter("text", "%" + text.toLowerCase() + "%");
        return query.getResultList();
    }

    public List<Card> getCards() {
        TypedQuery<Card> query = getEntityManager().createQuery("select new at.htl.model.pojo.Card(c.title, c.description, c.id) from LessonEntity c",
                Card.class);
        return query.getResultList();
    }
}
