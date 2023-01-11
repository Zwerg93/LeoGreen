import {Component, OnInit} from '@angular/core';
import {GameService} from "../../services/game.service";
import {HttpService} from "../../services/http.service";
import {Quiz} from "../../model/quiz";
import {Game} from "../../model/game";
import {ActivatedRoute} from "@angular/router";

@Component({
  selector: 'app-quiz-host',
  templateUrl: './quiz-host.component.html',
  styleUrls: ['./quiz-host.component.scss'],

})
export class QuizHostComponent implements OnInit {

  game?: Game;
  qrCodeSize: number = window.innerWidth / 7;

  constructor(private http: HttpService, private quizService: GameService, private aRoute: ActivatedRoute) {
    if (aRoute.snapshot.paramMap.get("id")) {
      let quizId = Number(aRoute.snapshot.paramMap.get("id"))
      let gameId = this.quizService.getActiveGameId();
      console.log(gameId)
      if (gameId){
        this.quizService.startWebsocket(gameId).subscribe(value => {this.game = value})
      }else{
        this.http.postStartGame(quizId).subscribe( gameId => {this.quizService.setActiveGameId(gameId); this.quizService.startWebsocket(gameId).subscribe(value => {this.game = value})})
      }
    }
  }



  ngOnInit(): void {
  }

  startGame() {
    if (!this.quizService.game$.value) return
    this.quizService.updateGameState({state: 0});
  }
}
