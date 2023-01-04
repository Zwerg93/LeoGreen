package at.htl.model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @ManyToOne
    Quiz quiz;
    String title;
    @OneToMany(mappedBy = "question")
    List<Answer> answerList = new ArrayList<>();
    @OneToOne
    Answer rightAnswer;
}
