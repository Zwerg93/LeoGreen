import {Component, OnInit} from '@angular/core';
import {GameService} from "../../../services/game.service";
import {Game} from "../../../model/game";
import {Router, Routes} from "@angular/router";

@Component({
  selector: 'app-quiz-client-answer-page',
  templateUrl: './quiz-client-answer-page.component.html',
  styleUrls: ['./quiz-client-answer-page.component.scss']
})
export class QuizClientAnswerPageComponent implements OnInit {

  game?: Game;
  name?: string;

  shapes = [
    "triangle",
    "square",
    "circle",
    "diamond"
  ];

  constructor(gameService : GameService, route: Router) {
    gameService.game$.subscribe(value => {
      if (value){
        this.game = value;
        this.name = gameService.name;
      }else{
        route.navigate(["/quiz/client"])
      }
    })
  }

  ngOnInit(): void {
  }

  checkAnswer(answer: string) {
    //this.score += 100;
    alert("You choose the Answer: " + answer);
  }

  getArrayPositionOfUser():number{
    if (this.name && this.game){
      return this.game.users.findIndex(value => {return value.name == this.name})
    }
    return -1;
  }
}
