package at.htl.resource;

import at.htl.model.Lesson.CardDTO;

import at.htl.model.Lesson.Lesson;
import at.htl.repo.LessonRepo;

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
        return lessonRepo.findAll().stream().toList();
    }

    @GET
    @Path("/{id}")
    public Lesson getLessonById(@PathParam("id") long id) {
        return lessonRepo.findById(id);
    }

    @GET
    @Path("/search/{text}")
    public List<Lesson> searchforLessen(@PathParam("text") String text) {
        return this.lessonRepo.search(text);
    }

    @GET
    @Path("/card/all")
    public List<CardDTO> getAllCards(){
        return this.lessonRepo.getCards();
    }



}
