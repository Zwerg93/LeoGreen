import {Component, OnInit} from '@angular/core';
import {GameService} from "../../../services/game.service";
import {Game} from "../../../model/game";
import {Router} from "@angular/router";
import {HttpService} from "../../../services/http.service";
import {GuessModel} from "../../../model/guess.model";
import {MatSnackBar} from "@angular/material/snack-bar";

@Component({
  selector: 'app-quiz-client-answer-page',
  templateUrl: './quiz-client-answer-page.component.html',
  styleUrls: ['./quiz-client-answer-page.component.scss']
})
export class QuizClientAnswerPageComponent implements OnInit {

  game?: Game;
  name?: string;
  userId?: number;
  userName?: String;
  guess?: GuessModel;
  score: number = 0;
  tmp?:number;

  shapes = [
    "triangle",
    "square",
    "circle",
    "diamond"
  ];

  constructor(gameService: GameService, route: Router, private http: HttpService,  private snackbar: MatSnackBar) {
    gameService.game$.subscribe(value => {
      if (value) {
        this.game = value;
        this.name = gameService.name;
      } else {
        route.navigate(["/quiz/client"])
      }
    })
  }

  ngOnInit(): void {

  }

  checkAnswer(answer: String) {
    this.getArrayPositionOfUser();
    this.guess = {
      userId: this.userId!,
      guess: answer
    }
    console.table(this.game!.quiz.questions[this.game!.state].answers)


    this.http.checkAnswer(this.game!.id, this.guess!).subscribe((c => {
      this.score = c;
      if(c < 1 ){
        this.snackbar.open("Wrong Answer", "", {duration: 1000});

      }
      console.log(c);
    }))

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
