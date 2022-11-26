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
    return [...this.serviceLesson.TopicSelected.getValue().keys()];
  }

}
