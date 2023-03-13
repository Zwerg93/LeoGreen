package at.htl.model.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Tag")
@Getter
@Setter
@ToString
public class TagEntity {
    @Id
    String tag;
    @ManyToOne
    QuestionEntity question;

    public TagEntity() {
    }

    public TagEntity(String tag, QuestionEntity question) {
        this.tag = tag;
        this.question = question;
    }
}
