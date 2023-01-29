import {Component, OnInit} from '@angular/core';
import {GameService} from "../../services/game.service";
import {HttpService} from "../../services/http.service";
import {Game} from "../../model/game";
import {ActivatedRoute} from "@angular/router";
import {Subscription} from "rxjs";
import {PlatformLocation} from "@angular/common";
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-quiz-host',
  templateUrl: './quiz-host.component.html',
  styleUrls: ['./quiz-host.component.scss'],

})
export class QuizHostComponent implements OnInit {

  subscription ?: Subscription
  game?: Game;
  qrCodeSize: number = window.innerHeight / 10;
  qrCodeLink?: string;
  private QR_URL = environment.QR_URL;

  constructor(private http: HttpService, private quizService: GameService,
              private aRoute: ActivatedRoute, private platformLocation: PlatformLocation) {
                
    if (aRoute.snapshot.paramMap.get("id")) {
      let quizId = Number(aRoute.snapshot.paramMap.get("id"))
      this.http.postStartGame(quizId).subscribe(gameId => {
        this.quizService.startWebsocket(gameId).subscribe(value => {
          this.game = value
          if (this.game)
            this.qrCodeLink = `${(platformLocation as any).location.origin}${this.QR_URL}/quiz/client?code=${this.game.id}`;
        })
      })
    }
  }

  ngOnInit(): void {
  }

  startGame() {
    this.quizService.startGame()
  }
}
