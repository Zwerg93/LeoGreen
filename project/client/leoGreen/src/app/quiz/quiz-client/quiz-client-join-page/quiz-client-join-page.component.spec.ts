import { ComponentFixture, TestBed } from '@angular/core/testing';

import { QuizClientJoinPageComponent } from './quiz-client-join-page.component';

describe('QuizClientJoinPageComponent', () => {
  let component: QuizClientJoinPageComponent;
  let fixture: ComponentFixture<QuizClientJoinPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ QuizClientJoinPageComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(QuizClientJoinPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
