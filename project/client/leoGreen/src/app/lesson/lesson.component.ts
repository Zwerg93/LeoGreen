import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {HttpService} from "../services/http.service";
import {ImgModel} from "../model/img.model";
import {LessonModel} from "../model/lesson.model";

@Component({
  selector: 'app-lesson',
  templateUrl: './lesson.component.html',
  styleUrls: ['./lesson.component.scss']
})
export class LessonComponent implements OnInit {

  images?: ImgModel[];
  lessons?: LessonModel[];
  id = ""
  summary?: String;

  constructor(private route: ActivatedRoute, private http: HttpService) {
  }

  ngOnInit(): void {
    this.http.getAllLessons().subscribe(
      (c: LessonModel[]) => {
        console.log(c)
        this.lessons = c;
      }
    )


    this.http.getAllIMGS().subscribe(
      (c: ImgModel[]) => {
        console.log(c)
        this.images = c;
      }
    )

    this.id = this.route.snapshot.paramMap.get('id') ?? "0"
    if (this.id) localStorage.setItem('last_topic_id', this.id)


    console.log(this.id)
  }

}
