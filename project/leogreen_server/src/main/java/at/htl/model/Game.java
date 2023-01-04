package at.htl.model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Game {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    Integer state;
    @OneToMany(mappedBy = "game")
    List<User> userList = new ArrayList<>();
    @ManyToOne
    Quiz quiz;
}
