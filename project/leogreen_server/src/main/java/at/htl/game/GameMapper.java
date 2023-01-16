package at.htl.game;

import at.htl.model.entity.GameEntity;
import at.htl.model.entity.QuizEntity;
import at.htl.model.entity.UserEntity;
import at.htl.model.pojo.Game;
import at.htl.model.pojo.Quiz;
import at.htl.model.pojo.User;
import at.htl.quiz.QuizMapper;
import at.htl.user.UserMapper;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.factory.Mappers;

import java.util.List;
import java.util.stream.Collectors;

@Mapper
public interface GameMapper {
    GameMapper INSTANCE = Mappers.getMapper(GameMapper.class);

    @Mapping(source = "users", target = "users", qualifiedByName = "usersListFromEntity")
    @Mapping(source = "quiz", target = "quiz", qualifiedByName = "quizFromEntity")
    Game gameFromEntity(GameEntity ge);

    @Mapping(source = "users", target = "users", qualifiedByName = "usersListToEntity")
    @Mapping(source = "quiz", target = "quiz", qualifiedByName = "quizToEntity")
    GameEntity gameToEntity(Game g);


    @Named("usersListFromEntity")
    static List<User> usersListFromEntity(List<UserEntity> users) {
        return users.stream().map(UserMapper.INSTANCE::userFromEntity).collect(Collectors.toList());
    }

    @Named("quizFromEntity")
    static Quiz quizFromEntity(QuizEntity qe) {
        return QuizMapper.INSTANCE.quizFromEntity(qe);
    }

    @Named("usersListToEntity")
    static List<UserEntity> usersListToEntity(List<User> users) {
        return users.stream().map(UserMapper.INSTANCE::userToEntity).collect(Collectors.toList());
    }

    @Named("quizToEntity")
    static QuizEntity quizToEntity(Quiz q) {
        return QuizMapper.INSTANCE.quizToEntity(q);
    }
}
