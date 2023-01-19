package at.htl.model.entity;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
@Entity
@Table(name = "Picture")
@Getter
@Setter
@ToString
public class PictureEntity {
    @Id
    @Column(length = 1000)
    public String name;
    @Column(length = 10000)
    public String altText;
    @ManyToOne
    @JoinColumn(name = "lesson_id")
    LessonEntity lesson;

    public PictureEntity(String name, String altText) {
        this.name = name;
        this.altText = altText;
    }

    public PictureEntity() {
    }
}
