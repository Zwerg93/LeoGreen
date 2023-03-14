package at.htl.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Tag")
@Getter
@Setter
@ToString
public class TagEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String tag;
    @ManyToOne
    @JoinColumn(nullable = false)
    QuestionEntity question;

    public TagEntity() {
    }

    public TagEntity(String tag, QuestionEntity question) {
        this.tag = tag;
        this.question = question;
    }
}
