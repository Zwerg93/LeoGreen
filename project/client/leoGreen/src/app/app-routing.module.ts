import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {HomeComponent} from "./home/home.component";
import {QuizComponent} from "./quiz/quiz.component";
import {QuizHostComponent} from "./quiz/quiz-host/quiz-host.component";
import {NotFoundComponent} from "./not-found/not-found.component";
import {QuizClientAnswerPageComponent} from "./quiz/quiz-client/quiz-client-answer-page/quiz-client-answer-page.component";
import {QuizClientJoinPageComponent} from "./quiz/quiz-client/quiz-client-join-page/quiz-client-join-page.component";
import {StatisticComponent} from "./statistic/statistic.component";
import {LessonComponent} from "./lesson/lesson.component";

const routes: Routes = [
  {path: '', pathMatch: 'full', redirectTo: 'home'},
  {path: 'home', component: HomeComponent},
  {path: 'lesson/:id', component: LessonComponent},
  {path: 'quiz', component: QuizComponent},
  {path: 'statistic', component: StatisticComponent},
  {path: 'quiz/host', component: QuizHostComponent},
  {path: 'quiz/client', component: QuizClientJoinPageComponent},
    {path: 'quiz/client-answer', component: QuizClientAnswerPageComponent},
  {path: '*', component: NotFoundComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
