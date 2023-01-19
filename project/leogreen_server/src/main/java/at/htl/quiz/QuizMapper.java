package at.htl.quiz;

import at.htl.model.entity.QuestionEntity;
import at.htl.model.entity.QuizEntity;
import at.htl.model.pojo.Question;
import at.htl.model.pojo.Quiz;
import at.htl.quiz.question.QuestionMapper;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.factory.Mappers;

import java.util.List;
import java.util.stream.Collectors;

@Mapper
public interface QuizMapper {
    QuizMapper INSTANCE = Mappers.getMapper(QuizMapper.class);

    @Mapping(source = "questions", target = "questions", qualifiedByName = "questionsListFromEntity")
    Quiz quizFromEntity(QuizEntity qe);

    @Mapping(source = "questions", target = "questions", qualifiedByName = "questionsListToEntity")
    QuizEntity quizToEntity(Quiz q);

    @Named("questionsListFromEntity")
    static List<Question> answersListFromEntity(List<QuestionEntity> questions) {
        return questions.stream().map(QuestionMapper.INSTANCE::questionFromEntity).collect(Collectors.toList());
    }

    @Named("questionsListToEntity")
    static List<QuestionEntity> questionsListToEntity(List<Question> questions) {
        return questions.stream().map(QuestionMapper.INSTANCE::questionToEntity).collect(Collectors.toList());
    }

}
