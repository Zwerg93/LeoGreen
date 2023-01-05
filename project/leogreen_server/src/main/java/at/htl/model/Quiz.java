package at.htl.model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Quiz {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String topic;
    @OneToMany(mappedBy = "quiz")
    List<Question> questionList = new ArrayList<>();
}