import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {DataService} from "./data.service";
import {Observable} from "rxjs";
import {Card} from "../model/card.model";

@Injectable({
  providedIn: 'root'
})
export class HttpService {
  SERVERURL = 'http://localhost:8080/'

  constructor(private http : HttpClient, private data: DataService) { }

  getAllCards(): Observable<Card[]> {
    return this.http.get<Card[]>(this.SERVERURL + 'lesson/card/all/')
  }
}
