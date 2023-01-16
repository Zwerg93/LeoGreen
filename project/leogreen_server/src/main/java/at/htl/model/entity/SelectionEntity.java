package at.htl.model.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Selection")
@Getter
@Setter
@ToString
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
