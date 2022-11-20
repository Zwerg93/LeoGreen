import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-quiz-client-answer-page',
  templateUrl: './quiz-client-answer-page.component.html',
  styleUrls: ['./quiz-client-answer-page.component.scss']
})
export class QuizClientAnswerPageComponent implements OnInit {
  score: number = 10;

  constructor() { }

  ngOnInit(): void {
  }

  checkAnswer() {
    this.score +=100;

  }
}
