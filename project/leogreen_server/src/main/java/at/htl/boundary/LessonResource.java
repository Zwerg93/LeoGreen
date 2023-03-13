package at.htl.boundary;

import at.htl.lesson.LessonMapper;
import at.htl.model.pojo.Card;

import at.htl.model.entity.LessonEntity;
import at.htl.lesson.LessonRepo;
import at.htl.model.pojo.Lesson;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/lesson")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class LessonResource {

    @Inject
    LessonRepo lessonRepo;

    @GET
    @Path("/getAll")
    public List<Lesson> getAllLessons() {
        return lessonRepo.findAll().list().stream().map(LessonMapper.INSTANCE::lessonFromEntity).toList();
    }

    @GET
    @Path("/{id}")
    public Lesson getLessonById(@PathParam("id") long id) {
        return LessonMapper.INSTANCE.lessonFromEntity(lessonRepo.findById(id));
    }

    @GET
    @Path("/search/{text}")
    public List<Lesson> searchForLesson(@PathParam("text") String text) {
        return this.lessonRepo.search(text).stream().map(LessonMapper.INSTANCE::lessonFromEntity).toList();
    }

    @GET
    @Path("/card/all")
    public List<Card> getAllCards() {
        return this.lessonRepo.getCards();
    }


}
