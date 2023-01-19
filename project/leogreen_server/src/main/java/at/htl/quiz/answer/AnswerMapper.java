package at.htl.quiz.answer;

import at.htl.model.entity.AnswerEntity;
import at.htl.model.pojo.Answer;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface AnswerMapper {
    AnswerMapper INSTANCE = Mappers.getMapper(AnswerMapper.class);

    Answer answerFromEntity(AnswerEntity ae);

    AnswerEntity answerToEntity(Answer a);
}
