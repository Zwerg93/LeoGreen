package at.htl.model.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Guess implements Serializable {
    Long userId;
    String quess;
}
