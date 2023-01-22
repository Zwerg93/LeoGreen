import {Component, OnInit} from '@angular/core';
import {GameService} from "../../../services/game.service";
import {MatSnackBar} from "@angular/material/snack-bar";
import {Game} from "../../../model/game";
import {Router} from "@angular/router";

@Component({
  selector: 'app-quiz-host-question',
  templateUrl: './quiz-host-question.component.html',
  styleUrls: ['./quiz-host-question.component.scss']
})
export class QuizHostQuestionComponent implements OnInit {

  game?: Game;
  shapes = [
    "triangle",
    "square",
    "circle",
    "diamond"
  ];

  constructor(private gameService: GameService, private snackbar: MatSnackBar, private router: Router) {
    this.gameService.game$.subscribe(value => this.game = value);
  }

  ngOnInit(): void {}

  nextQuestion() {
    if (this.game?.state == -3){
      this.router.navigate(['/home'])
    }
    if ( !this.gameService.increaseGameState()) {

      this.snackbar.open("Keine weiteren Fragen mehr!", "", {duration: 1000});

    }
  }
}
