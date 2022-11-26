import { Component, OnInit } from '@angular/core';
import {GameService} from "../../services/game.service";

@Component({
  selector: 'app-quiz-host',
  templateUrl: './quiz-host.component.html',
  styleUrls: ['./quiz-host.component.scss']
})
export class QuizHostComponent implements OnInit {

  game: any;

  constructor(private quizService: GameService) {
    quizService.game.subscribe(value => this.game = value);
  }

  ngOnInit(): void {
    console.log(this.game)
  }

  startGame() {
    this.quizService.game.next({
      ...this.quizService.game.value,
      started: true
    });
  }
}
