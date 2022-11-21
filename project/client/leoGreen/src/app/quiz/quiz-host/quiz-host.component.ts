import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-quiz-host',
  templateUrl: './quiz-host.component.html',
  styleUrls: ['./quiz-host.component.scss']
})
export class QuizHostComponent implements OnInit {

  game = {
    code: '123456',
    started: false,
    players: [
      {
        name: 'Fabian'
      },
      {
        name: 'Lorenz'
      },
      {
        name: 'Dominik'
      },
      {
        name: 'Marcel'
      }
    ]
  }

  constructor() { }

  ngOnInit(): void {
  }

  startGame() {
    this.game.started = true;
  }
}
