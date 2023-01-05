package at.htl.model;


import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.Column;
import javax.persistence.Entity;

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
    @Column(length = 1000)
    public String picturename;

}
