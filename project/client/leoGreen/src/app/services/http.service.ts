import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {DataService} from "./data.service";
import {Observable} from "rxjs";
import {Card} from "../model/card.model";
import {Image} from "../model/img.model";
import {Lesson} from "../model/lesson.model";
import {GuessModel} from "../model/guess.model";
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class HttpService {

  private API_URL = environment.API_URL;

  constructor(private http : HttpClient, private data: DataService) { }

  getAllCards(): Observable<Card[]> {
    return this.http.get<Card[]>(`${this.API_URL}/lesson/card/all`)
  }

  getAllImages(): Observable<Image[]> {
    return this.http.get<Image[]>(`${this.API_URL}/picture/getAll`)
  }

  getAllLessons():Observable<Lesson[]>{
    return this.http.get<Lesson[]>(`${this.API_URL}/lesson/getAll`)
  }

  postStartGame(gameId: number): Observable<number> {
    return this.http.post<number>(`${this.API_URL}/game/start/${gameId}`, {})
  }

  getIsGameActive(gameId: number): Observable<boolean> {
    return this.http.get<boolean>(`${this.API_URL}/game/active/${gameId}`)
  }

  checkAnswer(gameId: number, guess: GuessModel): Observable<any> {
    return this.http.post(`${this.API_URL}/game/${gameId}/guess`, guess);
  }

}
