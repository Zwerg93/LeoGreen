package at.htl.model.pojo;

import lombok.Data;

import java.util.List;

@Data
public class Lesson {
    long id;
    String title;
    String description;
    String summary;
    List<Section> sections;
}
