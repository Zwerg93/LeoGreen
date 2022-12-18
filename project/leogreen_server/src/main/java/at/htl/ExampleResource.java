package at.htl;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/quiz")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class ExampleResource {

    @Inject
    StartWebSocket webSocket;
    @Inject
    GameRoomController gameRoomController;

    @GET
    @Path("/start/{quiz_type}")
    public Response getStartedQuiz(@PathParam("quiz_type") Long quiz_type){
        Long quiz_id = webSocket.startGame(quiz_type);
        return Response.ok().entity(quiz_id).build();
    }
    @GET
    @Path("/end/{quiz_id}")
    public Response getStopQuiz(@PathParam("quiz_id") Long quizId){
        webSocket.removeGame(quizId);
        return Response.ok().build();
    }
}