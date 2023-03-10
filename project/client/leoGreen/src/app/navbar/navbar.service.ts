import { Injectable } from '@angular/core';
import {BehaviorSubject, Observable, Subject} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class NavbarService {
  static original_navbar_header = "LeoGreen Quizzes";
  private navbar_header = new Subject<string>()
  constructor() {}

  observe_nav_header(): Observable<string>{
    return this.navbar_header.asObservable()
  }

  change_nav_header_content(header_content: string){
    this.navbar_header.next(header_content)
  }
}
