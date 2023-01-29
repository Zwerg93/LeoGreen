import {Component, OnInit} from '@angular/core';
import {GameService} from "../../../services/game.service";
import {Game} from "../../../model/game";
import {Router} from "@angular/router";
import {HttpService} from "../../../services/http.service";
import {GuessModel} from "../../../model/guess.model";
import {MatSnackBar} from "@angular/material/snack-bar";
import {Quiz} from "../../../model/quiz";

@Component({
  selector: 'app-quiz-client-answer-page',
  templateUrl: './quiz-client-answer-page.component.html',
  styleUrls: ['./quiz-client-answer-page.component.scss']
})
export class QuizClientAnswerPageComponent {

  game?: Game;
  name?: string;
  userId?: number;
  userName?: String;
  guess?: GuessModel;
  tmp?:number;
  guessed = false
  isGameEnd = false

  shapes = [
    "triangle",
    "square",
    "circle",
    "diamond"
  ];

  constructor(gameService: GameService, route: Router, private http: HttpService,  private snackbar: MatSnackBar, private router: Router) {
    gameService.game$.subscribe(value => {
      if (value) {
        this.game = value;
        this.name = gameService.name;
        this.guessed = false

        if(this.game.state == -3){
          this.isGameEnd = true
        }

      } else {
        route.navigate(["/quiz/client"])
      }
    })
  }

  checkAnswer(answer: String) {
    this.getArrayPositionOfUser();
    this.guess = {
      userId: this.userId!,
      guess: answer
    }
    console.log(this.game?.state + " state")

    this.http.checkAnswer(this.game!.id, this.guess!).subscribe(
      value => {
        this.snackbar.open("Successfully Voted", "", {duration: 1500})
        this.guessed = true
      },
      error => {
        this.snackbar.open("Already Voted", "", {duration: 1500})
      });
  }


  getArrayPositionOfUser(): number {
    if (this.name && this.game) {
      return this.game.users.findIndex(value => {
        this.userId = value.id;
        this.userName == this.name
        return value.name == this.name
      })
    }
    return -1;
  }
}
