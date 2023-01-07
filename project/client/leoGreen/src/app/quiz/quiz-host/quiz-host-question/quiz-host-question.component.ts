import {Component, OnInit} from '@angular/core';
import {GameService} from "../../../services/game.service";
import {MatSnackBar} from "@angular/material/snack-bar";

@Component({
  selector: 'app-quiz-host-question',
  templateUrl: './quiz-host-question.component.html',
  styleUrls: ['./quiz-host-question.component.scss']
})
export class QuizHostQuestionComponent implements OnInit {

  game: any;
  shapes = [
    "triangle",
    "square",
    "circle",
    "diamond"
  ];

  constructor(private quizService: GameService, private snackbar: MatSnackBar) {
    quizService.game$.subscribe(value => this.game = value);
  }

  ngOnInit(): void {
    console.log(this.game, this.game.currentQuestion)
  }

  nextQuestion() {
    if (this.game.questions.length > this.game.currentQuestion + 1) {
      this.quizService.updateGameState({currentQuestion: this.game.currentQuestion + 1});
      console.log(this.game.currentQuestion)
      console.log(this.game.questions.length)
    }else {
      this.snackbar.open("Keine weiteren Fragen mehr!", "", {duration: 1000});
    }
  }
}
