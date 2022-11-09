import { ComponentFixture, TestBed } from '@angular/core/testing';

import { QuizClientAnswerPageComponent } from './quiz-client-answer-page.component';

describe('QuizClientAnswerPageComponent', () => {
  let component: QuizClientAnswerPageComponent;
  let fixture: ComponentFixture<QuizClientAnswerPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ QuizClientAnswerPageComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(QuizClientAnswerPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
