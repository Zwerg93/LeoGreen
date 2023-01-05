package at.htl.repo;

import at.htl.model.Quiz;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class QuizRepo implements PanacheRepository<Quiz> {
}
