import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { QuizComponent } from './quiz/quiz.component';
import { HomeComponent } from './home/home.component';
import { StatisticComponent } from './statistic/statistic.component';
import { LessonComponent } from './lesson/lesson.component';
import { QuizHostComponent } from './quiz/quiz-host/quiz-host.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import {MatButtonModule} from "@angular/material/button";
import {QRCodeModule} from "angular2-qrcode";
import { QuizClientAnswerPageComponent } from './quiz/quiz-client-answer-page/quiz-client-answer-page.component';

@NgModule({
  declarations: [
    AppComponent,
    QuizComponent,
    HomeComponent,
    StatisticComponent,
    LessonComponent,
    QuizHostComponent,
    NotFoundComponent,
    QuizClientAnswerPageComponent,

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NoopAnimationsModule,
    MatButtonModule,
    QRCodeModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
