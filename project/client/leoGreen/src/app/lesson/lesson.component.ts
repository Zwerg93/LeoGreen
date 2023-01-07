import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {HttpService} from "../services/http.service";
import {Image} from "../model/img.model";
import {Lesson} from "../model/lesson.model";

@Component({
  selector: 'app-lesson',
  templateUrl: './lesson.component.html',
  styleUrls: ['./lesson.component.scss']
})
export class LessonComponent implements OnInit {

  images?: Image[];
  lessons?: Lesson[];
  id = ""
  summary?: String;

  constructor(private route: ActivatedRoute, private http: HttpService) {
  }

  ngOnInit(): void {
    this.loadLessons();
    this.loadImages();

    this.id = this.route.snapshot.paramMap.get('id') ?? "0"
    if (this.id) localStorage.setItem('last_topic_id', this.id)

    console.log(this.id)
  }

  loadLessons() {
    this.http.getAllLessons().subscribe(
      (c: Lesson[]) => {
        console.log(c)
        this.lessons = c;
      }
    )
  }

  loadImages() {
    this.http.getAllIMGS().subscribe(
      (c: Image[]) => {
        console.log(c)
        this.images = c;
      }
    )
  }
}
