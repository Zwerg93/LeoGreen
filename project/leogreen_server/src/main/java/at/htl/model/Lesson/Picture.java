package at.htl.model.Lesson;


import io.quarkus.hibernate.orm.panache.PanacheEntity;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.*;

@Entity
public class Picture extends PanacheEntityBase {


    @Id
    @Column(length = 1000)
    public String name;
    @Column(length = 10000)
    public String altText;

    public Picture(String name, String altText) {
        this.name = name;
        this.altText = altText;
    }

    public Picture() {
    }
}
