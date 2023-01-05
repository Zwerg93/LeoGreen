package at.htl.resource;

import at.htl.model.Lesson;
import at.htl.repo.LessenRepo;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.File;
import java.util.List;

@Path("/lesson")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class LessonResource {

    @Inject
    LessenRepo lessenRepo;

    @GET
    @Path("/getAll")
    public List<Lesson> getAllLessons() {
        return lessenRepo.findAll().stream().toList();
    }

    @GET
    @Path("/{id}")
    public Lesson getLessonById(@PathParam("id") long id) {
        return lessenRepo.findById(id);
    }

    @GET
    @Path("/search/{text}")
    public List<Lesson> searchforLessen(@PathParam("text") String text) {
        return this.lessenRepo.search(text);
    }

    @GET
    @Path("/get/{fileName}")
    @Produces({"image/png"})
    public Response downloadFile(@PathParam("fileName") String fileName) {

        File file = new File("/home/marcel/Pictures/" + fileName);
        if (!file.exists()) {
            throw new RuntimeException("File not found: /home/marcel/Pictures/" + fileName);
        }
        Response.ResponseBuilder res = Response.ok((Object) file);
        res.header("Content-Disposition", "inline;filename=" + fileName);
        return res.build();
    }

}
