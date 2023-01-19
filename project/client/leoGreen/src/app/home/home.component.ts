import {Component, OnInit} from '@angular/core';
import {LessonService} from "../lesson/lesson.service";
import {HttpService} from "../services/http.service";
import {DataService} from "../services/data.service";
import {Card} from "../model/card.model";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  public cards?: Card[]

  constructor(private serviceLesson: LessonService, private http: HttpService, private data: DataService) {
  }

  ngOnInit(): void {
    this.http.getAllCards().subscribe((c:Card[])=>{
      this.data.cards = c;
      this.cards = c;
      console.log(this.data.cards.length)

    })
  }

  getTopics(): String[] {
    return [...this.serviceLesson.topicSelected$.getValue().keys()];
  }

  createRange(number: number) {
    return new Array(number).fill(0).map((n,index)=> index +1);
  }
}
