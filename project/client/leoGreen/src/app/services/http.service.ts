import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {DataService} from "./data.service";
import {Observable} from "rxjs";
import {Card} from "../model/card.model";
import {Image} from "../model/img.model";
import {Lesson} from "../model/lesson.model";
import {GuessModel} from "../model/guess.model";

@Injectable({
  providedIn: 'root'
})
export class HttpService {

  constructor(private http : HttpClient, private data: DataService) { }

  getAllCards(): Observable<Card[]> {
    return this.http.get<Card[]>('/m.pouget/api/lesson/card/all')
  }

  getAllImages(): Observable<Image[]> {
    return this.http.get<Image[]>('/api/picture/getAll')
  }

  getAllLessons():Observable<Lesson[]>{
    return this.http.get<Lesson[]>('/api/lesson/getAll')
  }

  postStartGame(gameId: number): Observable<number> {
    return this.http.post<number>(`api/game/start/${gameId}`, {})
  }

  getIsGameActive(gameId: number): Observable<boolean> {
    return this.http.get<boolean>(`api/game/active/${gameId}`)
  }

  checkAnswer(gameId: number, guess: GuessModel): Observable<any> {
    return this.http.post(`/api/game/${gameId}/guess`, guess);
  }

}
