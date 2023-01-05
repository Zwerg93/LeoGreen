package at.htl.model;


import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
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
    public List<ImgPath> imgPaths = new LinkedList<>();

}
