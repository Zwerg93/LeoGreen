package at.htl.boundary;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import java.net.URI;

@Path("/quiz")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class QuizResource {

    @Inject
    GameWebSocket webSocket;

    @POST
    @Path("/start/{quizType}")
    public Response getStartedQuiz(@PathParam("quizType") Long quizType, @Context UriInfo context){
        Long quizId = webSocket.startGame(quizType);
        URI uri = context.getAbsolutePathBuilder().path(String.valueOf(quizId)).build();
        return Response.created(uri).build();
    }
    @GET
    @Path("/end/{quizId}")
    public Response getStopQuiz(@PathParam("quizId") Long quizId){
        webSocket.removeGame(quizId);
        return Response.ok().build();
    }
}