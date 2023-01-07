package at.htl.model;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Selection")
public class SelectionEntity extends PanacheEntityBase {
    @Id
    public String id;
    public String name;

    public SelectionEntity(String name, String id) {
        this.name = name;
        this.id = id;
    }

    public SelectionEntity() {

    }
}
