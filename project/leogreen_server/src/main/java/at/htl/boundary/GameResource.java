package at.htl.boundary;

import at.htl.model.entity.*;
import at.htl.game.GameRepo;
import at.htl.model.pojo.Game;
import at.htl.model.pojo.Guess;
import at.htl.quiz.QuizRepo;
import at.htl.user.UserRepo;
import io.quarkus.panache.common.Parameters;

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
    @Inject
    UserRepo userRepo;

    @POST
    @Transactional
    @Path("/start/{quizId}")
    public Response startQuiz(@PathParam("quizId") Long quizId, @Context UriInfo context){
        QuizEntity quiz = this.quizRepo.findById(quizId);

        if (quiz == null){
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

        GameEntity game = GameEntity.create(-1, quiz);
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

    @GET
    @Path("/active/{gameId}")
    public Response isActive(@PathParam("gameId") Long gameId){
        GameEntity game = this.gameRepo.findById(gameId);
        return Response.ok(game != null).build();
    }

    @POST
    @Transactional
    @Path("/{gameId}/guess")
    public Response quizGuess(@PathParam("gameId") Long gameId, Guess guess){
        log(String.format("QuizGuess User#%d in Game#%d tries to voted #%s", guess.getUserId(), gameId, guess.getGuess()));
        GameEntity game = this.gameRepo.findById(gameId);
        UserEntity user = this.userRepo.find("game.id = :gameId and id = :id", Parameters.with("gameId", gameId).and("id", guess.getUserId())).stream().findFirst().orElse(null);

        if (game == null || user == null || user.getHasVoted()){
            return Response.status(Response.Status.BAD_REQUEST).build();
        }
        QuestionEntity question = game.getQuiz().getQuestions().get(game.getState());
        boolean isRightAnswer = guess.getGuess().equals(question.getCorrectAnswer().getAnswer());
        user.setHasVoted(true);


        
        if (isRightAnswer){
            long points = userRepo.calcPoints(gameId);
            user.setPoints(user.getPoints() + points);
            question.getTags().forEach(tag -> {
                gameRepo.addGameScore(new GameScoreEntity(game, tag, points));
            });
        } else {
            question.getTags().forEach(tag -> {
                gameRepo.addGameScore(new GameScoreEntity(game, tag, 0L));
            });
        }
        this.userRepo.merge(user);
        if (isRightAnswer){
            this.webSocket.updateAdmin(gameId, game);
        }

        return Response.ok().build();
    }

    @GET
    @Path("/statistic/{gameId}")
    public Response getStatistics(@PathParam("gameId") long gameId) {
        GameEntity game = this.gameRepo.findById(gameId);
        return Response.ok(gameRepo.getStatistics(game)).build();
    }


    private void log(String str){
        System.out.println("GameService: ".concat(str));
    }
}