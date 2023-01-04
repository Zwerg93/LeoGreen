package at.htl.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Table
public class Game {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    Integer state;
    @ManyToOne
    List<User> userList = new ArrayList<>();
    @OneToMany(mappedBy = "userList")
    Quiz quiz;
}
