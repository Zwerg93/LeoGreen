import {AfterViewInit, Component, OnInit} from '@angular/core';
import {GameService} from "../services/game.service";
import {MatSnackBar} from "@angular/material/snack-bar";
import {Router} from "@angular/router";
import {Game} from "../model/game";
import {User} from "../model/user";
import {HttpService} from "../services/http.service";

@Component({
  selector: 'app-statistic',
  templateUrl: './statistic.component.html',
  styleUrls: ['./statistic.component.scss']
})
export class StatisticComponent implements OnInit, AfterViewInit {
  game?: Game;
  topUsers?: User[] = [
    new User(-1, 'Fabian', 2222),
    new User(-2, 'Lorens', 1),
    new User(-3, 'Parcel', 0)
  ];
  graph = {
    data: [{
      type: 'scatterpolar',
      r: [-1],
      theta: ['x'],
      fill: 'toself',
      mode: 'lines'
    }],
    layout: {
      polar: {
        radialaxis: {
          visible: false,
          range: [0, 1000]
        }
      },
      paper_bgcolor: 'rgba(0,0,0,0)',
      plot_bgcolor: '#555555',
      showlegend: false,
      font: {
        size: 16,
        color: '#000'
      },
      autosize: false,
      width: 400,
      height: 400,
    },
    config: {
      staticPlot: true
    }
  };
  data: any[] = [];
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
