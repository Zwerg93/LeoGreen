import {Injectable} from '@angular/core';
import {BehaviorSubject, Subject} from "rxjs";
import {webSocket, WebSocketSubject} from "rxjs/webSocket";
import {Game} from "../model/game";

@Injectable({
  providedIn: 'root'
})
export class GameService {

  socket$?: WebSocketSubject<Game>
  game$?: BehaviorSubject<Game>

  constructor() {}

  public startWebsocket(gameId: number, name: string = "admin") {
    this.socket$ = webSocket(`ws://localhost:8080/quiz-game-websocket/${gameId}/${name}`)
    this.socket$.subscribe(this.onMessage)
  }

  private onMessage(value: Game) {
    if (this.game$) this.game$.next(value)
    else this.game$ = new BehaviorSubject<Game>(value)
  }

  public updateGameState(changes: any) {
    if (!this.game$) return

    this.game$.next({
      ...this.game$.value,
      ...changes
    });
    this.socket$?.next(this.game$.value);
  }

  increaseGameState() {
    if (!this.game$ || this.game$.value.state+1 >= this.game$.value.quiz.questions.length) return false
    this.updateGameState({state: this.game$.value.state+1})
    return true
  }
}
