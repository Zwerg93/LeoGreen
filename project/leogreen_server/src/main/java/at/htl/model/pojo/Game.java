package at.htl.model.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class Game implements Serializable {
    Long id;
    Integer state;
    List<User> users;
    Quiz quiz;

    public Game(Long id, Integer state, List<User> users, Quiz quiz) {
        this.id = id;
        this.state = state;
        this.users = users;
        this.quiz = quiz;
    }

    public Game() {
    }
}

