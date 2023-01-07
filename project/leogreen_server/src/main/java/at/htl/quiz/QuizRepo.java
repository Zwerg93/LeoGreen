package at.htl.quiz;

import at.htl.model.entity.QuizEntity;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class QuizRepo implements PanacheRepository<QuizEntity> {
}
