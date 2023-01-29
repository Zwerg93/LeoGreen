import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GuessedViewComponent } from './guessed-view.component';

describe('GuessedViewComponent', () => {
  let component: GuessedViewComponent;
  let fixture: ComponentFixture<GuessedViewComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GuessedViewComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(GuessedViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
