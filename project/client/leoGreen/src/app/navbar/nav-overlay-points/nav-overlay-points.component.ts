import { Component, OnInit } from '@angular/core';
import {Platform} from "@angular/cdk/platform";

@Component({
  selector: 'app-nav-overlay-points',
  templateUrl: './nav-overlay-points.component.html',
  styleUrls: ['./nav-overlay-points.component.scss']
})
export class NavOverlayPointsComponent implements OnInit {

  constructor(private platform: Platform) {

  }

  ngOnInit(): void {
    if(this.platform.ANDROID ||this.platform.IOS){
      document.getElementsByClassName("overlay-points-container")[0].innerHTML = "";
    }
  }

  getLastTopicId() : string{
    return localStorage.getItem('last_topic_id') ?? "0"
  }

  //overlay-points-container
}
