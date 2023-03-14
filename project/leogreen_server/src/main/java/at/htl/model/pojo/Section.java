package at.htl.model.pojo;

import at.htl.model.entity.PictureEntity;
import at.htl.model.enumerations.SectionType;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Section {
    long id;
    String content;
    String header;
    List<PictureEntity> pictures = new ArrayList<>();
    SectionType type;
}
