package at.htl.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.Entity;


public class ImgPath extends PanacheEntity {
    public String src;
    public String alt;

    public ImgPath(String src, String alt) {
        this.src = src;
        this.alt = alt;
    }

    public ImgPath() {
    }
}
