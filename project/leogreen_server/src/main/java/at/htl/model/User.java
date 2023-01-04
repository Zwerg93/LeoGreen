package at.htl.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "`Users`")
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String name;
    Long points;
    @ManyToOne
    Game game;
}
