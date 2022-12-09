import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NavOverlayPointsComponent } from './nav-overlay-points.component';

describe('NavOverlayPointsComponent', () => {
  let component: NavOverlayPointsComponent;
  let fixture: ComponentFixture<NavOverlayPointsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NavOverlayPointsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NavOverlayPointsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
