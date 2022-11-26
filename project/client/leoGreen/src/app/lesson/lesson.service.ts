import { Injectable } from '@angular/core';
import {BehaviorSubject, Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class LessonService {

  private topicMap = new Map<string, boolean>([
    ["CO2-Ausstoß", false],
    ["Temperatur", false],
    ["Klima", false]
  ])
  TopicSelected : BehaviorSubject<Map<String, Boolean>> = new BehaviorSubject<Map<String, Boolean>>(this.topicMap)

  constructor() {
  }

}
