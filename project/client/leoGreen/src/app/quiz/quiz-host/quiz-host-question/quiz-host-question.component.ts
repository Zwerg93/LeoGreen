import { Component, OnInit } from '@angular/core';
import {GameService} from "../../../services/game.service";

@Component({
  selector: 'app-quiz-host-question',
  templateUrl: './quiz-host-question.component.html',
  styleUrls: ['./quiz-host-question.component.scss']
})
export class QuizHostQuestionComponent implements OnInit {

  game: any;

  constructor(private quizService: GameService) {
    quizService.game.subscribe(value => this.game = value);
  }

  ngOnInit(): void {
    console.log(this.game, this.game.currentQuestion)
  }

}
