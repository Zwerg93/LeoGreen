import {Injectable} from '@angular/core';
import {BehaviorSubject, Subject} from "rxjs";
import {webSocket, WebSocketSubject} from "rxjs/webSocket";
import {Game} from "../model/game";
import {HttpService} from "./http.service";
import * as http from "http";
import {numbers} from "@material/snackbar";

@Injectable({
  providedIn: 'root'
})
export class GameService {

  activeGameIdKey = "activeGameId"
  activeGameNameKey = "activeGameName"
  name ?: string;
  socket$?: WebSocketSubject<Game>
  game$: BehaviorSubject<Game | undefined> = new BehaviorSubject<Game | undefined>(undefined);


  constructor(private http : HttpService) {
  }

  /*private setActiveGame(gameId: number, name: string){
    sessionStorage.setItem(this.activeGameIdKey, gameId.toString())
    sessionStorage.setItem(this.activeGameNameKey, name)
  }

  getActiveGame(): {gameId: number | null, name: string | null}{
    let gameId: number | null = Number(sessionStorage.getItem(this.activeGameIdKey))
    const name = sessionStorage.getItem(this.activeGameNameKey)
    gameId = (isNaN(gameId)) ? null : gameId
    return {gameId, name}
  }

  isActiveGame(): boolean{
    const game = this.getActiveGame()
    return game.gameId != null && game.name != null;
  }

  private cleanActiveGameSessionStorage(){
    sessionStorage.removeItem(this.activeGameIdKey)
    sessionStorage.removeItem(this.activeGameNameKey)
  }*/

  public startWebsocket(gameId: number, name: string = "admin"): BehaviorSubject<Game | undefined>{
    console.log(`GameService#startwebsocket(${gameId}, ${name})`)
    this.name = name;
    this.socket$ = webSocket(`ws://localhost:8080/quiz-game-websocket/${gameId}/${name}`)
    this.socket$.subscribe(value => {
      //if (!this.isActiveGame()){this.setActiveGame(gameId, name)}
      this.onMessage(value, this.game$)
    })
    return this.game$
  }

  private onMessage(value: Game, game$: BehaviorSubject<Game | undefined>):void {
    game$.next(value)
    if (value?.state == -2){
      this.socket$?.complete()
      //this.cleanActiveGameSessionStorage()
    }
  }

  private updateGameState(changes: any) {
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

  startGame() {
    this.updateGameState({state: 0});
  }
}
