package at.htl.resource;

import at.htl.model.Lesson;
import at.htl.repo.LessenRepo;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/lesson")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class LessonResource {

    LessenRepo lessonResource = new LessenRepo();

    @GET
    @Path("/getAll")
    public Lesson getAllLessons() {
        //this.lessonResource.soutAllLessonsTest();

        return null;
    }
}
