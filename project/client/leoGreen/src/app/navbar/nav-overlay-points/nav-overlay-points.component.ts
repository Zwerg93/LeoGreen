import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-nav-overlay-points',
  templateUrl: './nav-overlay-points.component.html',
  styleUrls: ['./nav-overlay-points.component.scss']
})
export class NavOverlayPointsComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  getLastTopicId() : string{
    return localStorage.getItem('last_topic_id') ?? "0"
  }
}
