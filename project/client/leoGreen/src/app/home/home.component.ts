import { Component, OnInit } from '@angular/core';
import {LessonService} from "../lesson/lesson.service";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  constructor(private serviceLesson: LessonService) { }

  ngOnInit(): void {
  }

  getTopics() : String[]{
    return [...this.serviceLesson.topicSelected$.getValue().keys()];
  }

  createRange(number: number) {
    return new Array(number).fill(0).map((n,index)=> index +1);
  }
}
