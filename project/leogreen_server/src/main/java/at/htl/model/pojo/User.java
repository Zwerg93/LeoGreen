package at.htl.model.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class User implements Serializable {
    Long id;
    String name;
    Long points;

    public User(Long id, String name, Long points) {
        this.id = id;
        this.name = name;
        this.points = points;
    }

    public User() {
    }
}
