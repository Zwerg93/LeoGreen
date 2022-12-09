import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'app-lesson-card',
  templateUrl: './lesson-card.component.html',
  styleUrls: ['./lesson-card.component.scss']
})
export class LessonCardComponent implements OnInit {

  @Input('id') id?: number;

  constructor() { }

  ngOnInit(): void {
  }

}
