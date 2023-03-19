import {Component, OnDestroy} from '@angular/core';
import {GameService} from "../../../services/game.service";
import {Game} from "../../../model/game";
import {Router} from "@angular/router";
import {HttpService} from "../../../services/http.service";
import {GuessModel} from "../../../model/guess.model";
import {MatSnackBar} from "@angular/material/snack-bar";
import {NavbarService} from "../../../navbar/navbar.service";

@Component({
  selector: 'app-quiz-client-answer-page',
  templateUrl: './quiz-client-answer-page.component.html',
  styleUrls: ['./quiz-client-answer-page.component.scss']
})
export class QuizClientAnswerPageComponent implements OnDestroy{

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

  constructor(gameService: GameService, route: Router, private http: HttpService,  private snackbar: MatSnackBar, private router: Router, public nav: NavbarService) {
    gameService.game$.subscribe(value => {
      if (value) {
        this.game = value;
        // updates the user_id and name for the player + gives position_id of array
        let user_index = this.getArrayPositionOfUser();
        this.name = gameService.name;
        this.guessed = (this.game.users[user_index] != undefined) ? this.game.users[user_index].hasVoted : true;

        if (this.game.state >= 0 && this.game.state < this.game.quiz.questions.length){
          nav.change_nav_header_content("Frage Nr. " + (this.game.state + 1));
        }

        if(this.game.state == -3){
          this.isGameEnd = true
        }

      } else {
        route.navigate(["/quiz/client"])
      }
    })
  }

  checkAnswer(answer: String) {
    this.guess = {
      userId: this.userId!,
      guess: answer
    }
    this.http.checkAnswer(this.game!.id, this.guess!).subscribe(
      value => {
        this.snackbar.open("Successfully Voted", "", {duration: 1500})
        this.guessed = true
      },
      error => {
        this.snackbar.open("Already Voted", "", {duration: 1500})
        this.guessed = true
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

  getPlatz(): number{
    const tempUsers = [...this.game?.users ?? []]

    console.log(tempUsers)
    return tempUsers.sort(function (a, b){
      if(a.points < b.points){
        return 1
      }
      if(a.points > b.points){
        return -1
      }
      return 0
    }).findIndex(value => {
      return value.id == this.userId;
    }) + 1
  }

  ngOnDestroy(): void {
    this.nav.change_nav_header_content(NavbarService.original_navbar_header)
  }
}
