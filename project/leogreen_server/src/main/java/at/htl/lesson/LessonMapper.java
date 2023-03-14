package at.htl.lesson;

import at.htl.model.entity.*;
import at.htl.model.pojo.*;
import at.htl.quiz.QuizMapper;
import at.htl.user.UserMapper;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.factory.Mappers;

import java.util.List;
import java.util.stream.Collectors;

@Mapper
public interface LessonMapper {
    LessonMapper INSTANCE = Mappers.getMapper(LessonMapper.class);

    @Mapping(source = "sections", target = "sections", qualifiedByName = "sectionsFromEntity")
    Lesson lessonFromEntity(LessonEntity le);
    Section sectionFromEntity(SectionEntity section);

    @Mapping(source = "sections", target = "sections", qualifiedByName = "sectionsToEntity")
    LessonEntity lessonToEntity(Lesson l);
    SectionEntity sectionToEntity(Section section);


    @Named("sectionsFromEntity")
    static List<Section> sectionsFromEntity(List<SectionEntity> sectionEntities) {
        System.out.println(sectionEntities.size());
        return sectionEntities.stream().map(INSTANCE::sectionFromEntity).collect(Collectors.toList());
    }
    @Named("sectionsToEntity")
    static List<SectionEntity> sectionsToEntity(List<Section> sections) {
        return sections.stream().map(INSTANCE::sectionToEntity).collect(Collectors.toList());
    }
}
