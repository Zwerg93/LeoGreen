import {Component, OnInit} from '@angular/core';
import {GameService} from "../../services/game.service";
import {HttpService} from "../../services/http.service";
import {Quiz} from "../../model/quiz";
import {Game} from "../../model/game";
@Component({
  selector: 'app-quiz-host',
  templateUrl: './quiz-host.component.html',
  styleUrls: ['./quiz-host.component.scss'],

})
export class QuizHostComponent implements OnInit {

  game?: Game;
  qrCodeSize: number = window.innerWidth/7;

  constructor(private http: HttpService, private quizService: GameService) {
    console.log("hi")
    if (localStorage.getItem('last_topic_id')) {
      let quizId = Number(localStorage.getItem('last_topic_id'))
      this.http.postStartGame(quizId).subscribe(
        gameId => {
          this.quizService.startWebsocket(gameId)

        })
    }
  }

  ngOnInit(): void {
    //this.game.started = false;
    console.log(this.game)
    this.quizService.game$?.subscribe(
      value => this.game = value
    )
  }

  startGame() {
    if (!this.quizService.game$) return
    this.quizService.updateGameState({state: 0});
  }
}
