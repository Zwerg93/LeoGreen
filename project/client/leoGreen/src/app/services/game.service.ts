import { PlatformLocation } from '@angular/common';
import {Injectable} from '@angular/core';
import {BehaviorSubject, concatMap, delay, iif, of, retryWhen, Subscription, tap, throwError} from "rxjs";
import {webSocket, WebSocketSubject} from "rxjs/webSocket";
import { environment } from 'src/environments/environment';
import {Game} from "../model/game";
import {HttpService} from "./http.service";

@Injectable({
  providedIn: 'root'
})
export class GameService {
  name ?: string;
  socket$?: WebSocketSubject<Game>
  game$: BehaviorSubject<Game | undefined> = new BehaviorSubject<Game | undefined>(undefined);
  disconnected = true

  private WS_URL = environment.WS_URL;


  constructor(private http : HttpService, private platformLocation: PlatformLocation) {
  }

  public startWebsocket(gameId: number, name: string = "admin"): BehaviorSubject<Game | undefined>{
    console.log(`GameService#startwebsocket(${gameId}, ${name})`)
    this.name = name;
    console.log(this.platformLocation);

    this.socket$ = webSocket(`${this.WS_URL}/${gameId}/${name}`)
    const subscription: Subscription = this.socket$.pipe(
      retryWhen(errors =>
        errors.pipe(
          concatMap((error, i) =>
            iif(
              () => environment.webSockets.maxReconnectAttempts !== -1 &&
                i >= environment.webSockets.maxReconnectAttempts,
              throwError('WebSocket reconnecting retry limit exceeded!'),
              of(error).pipe(
                tap(() => {
                  this.disconnected = true;
                  console.warn('Trying to reconnect to WebSocket server...');
                }),
                delay(environment.webSockets.reconnectAttemptDelay)
              )
            )
          )
        )
      ),  tap(() => {
          if (this.disconnected) {
            this.disconnected = false;
            console.info('Successfully re-connected to the WebSocket server.');
          }
        })
      ).subscribe(
      (data) => this.onMessage(data, this.game$),
      (err) => console.error(err),
      () => console.warn('Connection to the WebSocket server was closed!')
    );
    return this.game$
  }

  private onMessage(value: Game, game$: BehaviorSubject<Game | undefined>):void {
    game$.next(value)
    if (value?.state == -2){
      this.socket$?.complete()
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
    if (!this.game$.value || this.game$.value.state + 1 >= this.game$.value.quiz.questions.length) {
      console.log(" no question")
      this.updateGameState({state: -3})
      console.log(this.game$.value?.state + " State no question")
      return false
    }

    if (this.game$.value.state > -3) {
      this.updateGameState({state: this.game$.value.state + 1})
      console.log(this.game$.value?.state + " State increase")
      return true
    }
    console.log(this.game$.value?.state + " State increase")
    return false;
  }

  startGame() {
    this.updateGameState({state: 0});
  }
}
