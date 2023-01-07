package at.htl.model.entity;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;
@Entity
@Table(name = "Lesson")
@Getter
@Setter
@ToString
public class LessonEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column(length = 100000)
    String title;
    @Column(length = 100000)
    String description;
    @Column(length = 100000)
    String summary;
    @Column(length = 1000000)
    String content;
    @OneToMany(mappedBy = "lesson")
    @ToString.Exclude
    List<PictureEntity> pictureList = new LinkedList<>();

    public LessonEntity(Long id, String title, String description, String summary, String content, List<PictureEntity> pictureList) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.summary = summary;
        this.content = content;
        this.pictureList = pictureList;
    }

    public LessonEntity() {
    }
}