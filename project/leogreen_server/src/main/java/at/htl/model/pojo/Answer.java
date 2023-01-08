package at.htl.model.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Answer implements Serializable {
    Long id;
    String answer;
}
