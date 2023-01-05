package at.htl.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.Entity;

@Entity
public class ImgPath extends PanacheEntity {
    public String src;
    public String alt;
}
