package at.htl.resource;

import at.htl.GameWebSocket;
import at.htl.model.Game;
import at.htl.model.Quiz;
import at.htl.repo.GameRepo;
import at.htl.repo.QuizRepo;
import org.hibernate.engine.spi.Status;

import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/game")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class GameResource {

    @Inject
    GameWebSocket webSocket;
    @Inject
    GameRepo gameRepo;
    @Inject
    QuizRepo quizRepo;

    @GET
    @Transactional
    @Path("/start/{quiz_id}")
    public Response getStartQuiz(@PathParam("quiz_id") Long quiz_id){
        Quiz quiz = this.quizRepo.findById(quiz_id);

        if (quiz == null){
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

        Game game = Game.create(0, quiz);
        this.gameRepo.persist(game);
        this.webSocket.startGame(game.getId());

        return Response.ok().entity(game.getId()).build();
    }
    @GET
    @Path("/end/{game_id}")
    public Response getEndQuiz(@PathParam("game_id") Long game_id){
        if (!this.gameRepo.deleteById(game_id)){
            return Response.status(Response.Status.NO_CONTENT).build();
        }
        this.webSocket.removeGame(game_id);
        return Response.status(Response.Status.ACCEPTED).build();
    }
}