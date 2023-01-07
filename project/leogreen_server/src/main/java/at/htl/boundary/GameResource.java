package at.htl.boundary;

import at.htl.model.entity.GameEntity;
import at.htl.model.entity.QuizEntity;
import at.htl.game.GameRepo;
import at.htl.quiz.QuizRepo;

import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;

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

    @POST
    @Transactional
    @Path("/start/{quizId}")
    public Response startQuiz(@PathParam("quizId") Long quizId, @Context UriInfo context){
        QuizEntity quiz = this.quizRepo.findById(quizId);

        if (quiz == null){
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

        GameEntity game = GameEntity.create(0, quiz);
        this.gameRepo.persist(game);
        this.webSocket.startGame(game.getId());

        return Response.ok(game.getId()).build();
    }
    @POST
    @Path("/end/{gameId}")
    public Response endQuiz(@PathParam("gameId") Long gameId){
        if (!this.gameRepo.deleteById(gameId)){
            return Response.status(Response.Status.NO_CONTENT).build();
        }
        this.webSocket.removeGame(gameId);
        return Response.status(Response.Status.ACCEPTED).build();
    }
}