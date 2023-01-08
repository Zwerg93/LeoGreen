package at.htl.user;

import at.htl.model.entity.UserEntity;
import at.htl.model.pojo.User;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface UserMapper {
    UserMapper INSTANCE = Mappers.getMapper(UserMapper.class);

    User userFromEntity(UserEntity ue);

    UserEntity userToEntity(User u);
}
