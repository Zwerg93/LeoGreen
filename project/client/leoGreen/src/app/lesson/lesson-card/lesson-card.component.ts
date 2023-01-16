import {Component, Input, OnInit} from '@angular/core';
import {Card} from "../../model/card.model";
import {DataService} from "../../services/data.service";

@Component({
  selector: 'app-lesson-card',
  templateUrl: './lesson-card.component.html',
  styleUrls: ['./lesson-card.component.scss']
})
export class LessonCardComponent implements OnInit {
  public cards?: Card[]

  @Input('id') id?: number;
  title?: String;
  description?: String;

  constructor(private data: DataService) {
    this.cards = data.cards;
  }

  ngOnInit(): void {

    // @ts-ignore
    this.title = this.cards[this.id-1].title;
    // @ts-ignore
    this.description = this.cards[this.id-1].description;
  }

}
