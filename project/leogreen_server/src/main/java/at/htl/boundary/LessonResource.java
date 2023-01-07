package at.htl.boundary;

import at.htl.model.pojo.Card;

import at.htl.model.entity.LessonEntity;
import at.htl.lesson.LessonRepo;

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
    public List<LessonEntity> getAllLessons() {
        return lessonRepo.findAll().stream().toList();
    }

    @GET
    @Path("/{id}")
    public LessonEntity getLessonById(@PathParam("id") long id) {
        return lessonRepo.findById(id);
    }

    @GET
    @Path("/search/{text}")
    public List<LessonEntity> searchForLesson(@PathParam("text") String text) {
        return this.lessonRepo.search(text);
    }

    @GET
    @Path("/card/all")
    public List<Card> getAllCards(){
        return this.lessonRepo.getCards();
    }



}
