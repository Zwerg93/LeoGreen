import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {HttpService} from "../services/http.service";
import {Image} from "../model/img.model";
import {Lesson, SectionType} from "../model/lesson.model";

@Component({
  selector: 'app-lesson',
  templateUrl: './lesson.component.html',
  styleUrls: ['./lesson.component.scss']
})
export class LessonComponent implements OnInit {

  images: Image[] = [];
  lessons?: Lesson[];
  id?: number;
  summary?: string;
  url: string = '';

  constructor(private route: ActivatedRoute, private http: HttpService) {
  }

  ngOnInit(): void {
    this.url = this.http.getImageURL();
    this.loadLessons();
    this.loadImages();

    this.id = Number.parseInt(this.route.snapshot.paramMap.get('id') ?? "-1")
    if (this.id) localStorage.setItem('last_topic_id', String(this.id))

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
    this.http.getAllImages().subscribe(
      (c: Image[]) => {
        console.log(c)
        this.images = c;
      }
    )
  }

  getLesson(id: number): Lesson | undefined {
    return this.lessons?.filter(l => l.id === id).at(0);
  }
}
