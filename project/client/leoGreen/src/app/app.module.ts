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
import { QuizClientAnswerPageComponent } from './quiz/quiz-client/quiz-client-answer-page/quiz-client-answer-page.component';
import { QuizClientJoinPageComponent } from './quiz/quiz-client/quiz-client-join-page/quiz-client-join-page.component';
import {MatFormFieldModule} from "@angular/material/form-field";
import { NavbarComponent } from './navbar/navbar.component';
import {MatInputModule} from "@angular/material/input";
import {ReactiveFormsModule} from "@angular/forms";
import {MatSnackBarModule} from '@angular/material/snack-bar';
import { QuizHostQuestionComponent } from './quiz/quiz-host/quiz-host-question/quiz-host-question.component';
import { LandingPageComponent } from './landing-page/landing-page.component';
import { LessonCardComponent } from './lesson/lesson-card/lesson-card.component';
import {MatCheckboxModule} from '@angular/material/checkbox';
import {MatMenuModule} from "@angular/material/menu";
import {MatIconModule} from "@angular/material/icon";
import { NavOverlayPointsComponent } from './navbar/nav-overlay-points/nav-overlay-points.component';
import {MatTooltipModule} from '@angular/material/tooltip';
import {HttpClientModule} from "@angular/common/http";
import {MatProgressSpinnerModule} from "@angular/material/progress-spinner";
import { QuizAnswerLoadingComponent } from './quiz/quiz-client/quiz-client-answer-page/quiz-answer-loading/quiz-answer-loading.component';


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
    QuizClientJoinPageComponent,
    NavbarComponent,
    QuizHostQuestionComponent,
    LandingPageComponent,
    LessonCardComponent,
    NavOverlayPointsComponent,
    QuizAnswerLoadingComponent
  ],
    imports: [
        BrowserModule,
        AppRoutingModule,
        NoopAnimationsModule,
        MatButtonModule,
        QRCodeModule,
        MatFormFieldModule,
        MatInputModule,
        ReactiveFormsModule,
        MatSnackBarModule,
        MatCheckboxModule,
        MatMenuModule,
        MatIconModule,
        MatTooltipModule,
        HttpClientModule,
        MatProgressSpinnerModule
    ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
