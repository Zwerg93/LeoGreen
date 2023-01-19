package at.htl.quiz.question;

import at.htl.model.entity.AnswerEntity;
import at.htl.model.entity.QuestionEntity;
import at.htl.model.pojo.Answer;
import at.htl.model.pojo.Question;
import at.htl.quiz.answer.AnswerMapper;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.factory.Mappers;

import java.util.List;
import java.util.stream.Collectors;

@Mapper
public interface QuestionMapper {
    QuestionMapper INSTANCE = Mappers.getMapper(QuestionMapper.class);

    @Mapping(source = "answers", target = "answers", qualifiedByName = "answersListFromEntity")
    @Mapping(source = "correctAnswer", target = "correctAnswer", qualifiedByName = "correctAnswerFromEntity")
    Question questionFromEntity(QuestionEntity qe);

    @Mapping(source = "answers", target = "answers", qualifiedByName = "answersListToEntity")
    @Mapping(source = "correctAnswer", target = "correctAnswer", qualifiedByName = "correctAnswerToEntity")
    QuestionEntity questionToEntity(Question q);

    @Named("answersListFromEntity")
    static List<Answer> answersListFromEntity(List<AnswerEntity> answers) {
        return answers.stream().map(AnswerMapper.INSTANCE::answerFromEntity).collect(Collectors.toList());
    }

    @Named("correctAnswerFromEntity")
    static Answer correctAnswerFromEntity(AnswerEntity answer) {
        return AnswerMapper.INSTANCE.answerFromEntity(answer);
    }

    @Named("answersListToEntity")
    static List<AnswerEntity> answersListToEntity(List<Answer> answers) {
        return answers.stream().map(AnswerMapper.INSTANCE::answerToEntity).collect(Collectors.toList());
    }

    @Named("correctAnswerToEntity")
    static AnswerEntity correctAnswerToEntity(Answer answer) {
        return AnswerMapper.INSTANCE.answerToEntity(answer);
    }

}
