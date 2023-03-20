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
    @Mapping(source = "quiz", target = "quizId", qualifiedByName = "quizFromEntity")
    Lesson lessonFromEntity(LessonEntity le);
    Section sectionFromEntity(SectionEntity section);

    @Mapping(source = "sections", target = "sections", qualifiedByName = "sectionsToEntity")
    @Mapping(source = "quizId", target = "quiz", qualifiedByName = "quizToEntity")
    LessonEntity lessonToEntity(Lesson l);
    SectionEntity sectionToEntity(Section section);


    @Named("quizFromEntity")
    static long quizFromEntity(QuizEntity quiz) {
        return quiz.getId();
    }
    @Named("quizToEntity")
    static QuizEntity quizToEntity(long quizId) {
        return null;
    }

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
