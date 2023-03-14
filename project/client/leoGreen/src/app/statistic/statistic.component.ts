import {AfterViewInit, Component, OnInit} from '@angular/core';
import {GameService} from "../services/game.service";
import {MatSnackBar} from "@angular/material/snack-bar";
import {Router} from "@angular/router";
import {Game} from "../model/game";
import {User} from "../model/user";
import {HttpService} from "../services/http.service";
import {Statistics} from "../model/statistics";

@Component({
  selector: 'app-statistic',
  templateUrl: './statistic.component.html',
  styleUrls: ['./statistic.component.scss']
})
export class StatisticComponent implements OnInit, AfterViewInit {
  game?: Game;
  topUsers?: User[] = [];
  data: Statistics[] = [];
  values: string[] = [];

  constructor(private http: HttpService, private gameService: GameService) {
    this.gameService.game$.subscribe(value => {
      this.game = value;
      this.updateStatistics();
    });
  }

  ngOnInit(): void {
    if (!this.game) return;
    this.topUsers = this.game.users
      .sort((a, b) => b.points - a.points)
      .slice(0, 3);
  }

  ngAfterViewInit(): void {
  }

  private updateStatistics() {
    this.http.getStatistics(this.game?.id ?? 2).subscribe((data) => {
      this.data = data;
    })
  }
}
