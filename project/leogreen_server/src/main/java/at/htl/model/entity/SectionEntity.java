package at.htl.model.entity;

import at.htl.model.enumerations.SectionType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Section")
@Getter
@Setter
@ToString
public class SectionEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @ManyToOne
    @JoinColumn(name = "lesson_id")
    LessonEntity lesson;
    @Column(length = 10000)
    String content;
    @Column(length = 100)
    String header;
    @OneToMany(mappedBy = "section")
    @ToString.Exclude
    List<PictureEntity> pictures = new ArrayList<>();
    @Enumerated(EnumType.STRING)
    SectionType type;

    public SectionEntity(Long id, LessonEntity lesson, String content, List<PictureEntity> pictures, SectionType type) {
        this.id = id;
        this.lesson = lesson;
        this.content = content;
        this.pictures = pictures;
        this.type = type;
    }

    public SectionEntity() {
    }
}
