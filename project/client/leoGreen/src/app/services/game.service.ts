import {Injectable} from '@angular/core';
import {BehaviorSubject, Subject} from "rxjs";
import {webSocket, WebSocketSubject} from "rxjs/webSocket";
import {Game} from "../model/game";

@Injectable({
  providedIn: 'root'
})
export class GameService {

  activeGameIdKey = "activeGameId"
  socket$?: WebSocketSubject<Game>
  game$: BehaviorSubject<Game | undefined> = new BehaviorSubject<Game | undefined>(undefined);


  constructor() {
  }

  setActiveGameId(gameId: number){
    sessionStorage.setItem(this.activeGameIdKey, gameId.toString())
  }

  getActiveGameId(): number | undefined{
    return (sessionStorage.getItem(this.activeGameIdKey) != null) ? Number(sessionStorage.getItem(this.activeGameIdKey)) : undefined;
  }

  endGame(){
    sessionStorage.removeItem(this.activeGameIdKey)
  }

  public startWebsocket(gameId: number, name: string = "admin"): BehaviorSubject<Game | undefined>{
    this.socket$ = webSocket(`ws://localhost:8080/quiz-game-websocket/${gameId}/${name}`)
    this.socket$.subscribe(value => {
      this.onMessage(value, this.game$)
    })
    return this.game$
  }

  private onMessage(value: Game, game$: BehaviorSubject<Game | undefined>):void {
    console.log(value)
    game$.next(value)
  }

  public updateGameState(changes: any) {
    if (!this.game$.value) return

    this.game$.next({
      ...this.game$.value,
      ...changes
    });

    this.socket$?.next(this.game$.value);
  }

  increaseGameState() {
    if (!this.game$.value || this.game$.value.state+1 >= this.game$.value.quiz.questions.length) return false
    this.updateGameState({state: this.game$.value.state+1})
    return true
  }
}
