package at.htl.model.Lesson;


import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;

@Entity
public class Lesson extends PanacheEntity {
    @Column(length = 100000)
    public String title;
    @Column(length = 100000)
    public String description;
    @Column(length = 100000)
    public String summary;
    @Column(length = 1000000)
    public String content;

    @OneToMany

    public List<Picture> pictureList = new LinkedList<>();


}
