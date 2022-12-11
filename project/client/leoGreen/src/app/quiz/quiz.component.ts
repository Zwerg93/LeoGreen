import { Component, OnInit } from '@angular/core';
import {GameService} from "../services/game.service";
import {MatSnackBar} from "@angular/material/snack-bar";

@Component({
  selector: 'app-quiz',
  templateUrl: './quiz.component.html',
  styleUrls: ['./quiz.component.scss']
})
export class QuizComponent implements OnInit {
  game: any;

  constructor(private quizService: GameService, private snackbar: MatSnackBar) {
    quizService.game$.subscribe(value => this.game = value);
  }

  ngOnInit(): void {
  }

}
