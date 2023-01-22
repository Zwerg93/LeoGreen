import {AfterViewInit, Component, OnInit} from '@angular/core';
import {GameService} from "../services/game.service";
import {MatSnackBar} from "@angular/material/snack-bar";
import {Router} from "@angular/router";
import {Game} from "../model/game";
import {User} from "../model/user";

@Component({
  selector: 'app-statistic',
  templateUrl: './statistic.component.html',
  styleUrls: ['./statistic.component.scss']
})
export class StatisticComponent implements OnInit, AfterViewInit {
  game?: Game;
  topUsers?: User[];
  constructor(private gameService: GameService, private snackbar: MatSnackBar, private router: Router) {
    this.gameService.game$.subscribe(value => this.game = value);
  }

  ngOnInit(): void {
    this.topUsers = this.game?.users
      .sort((a, b) => b.points - a.points)
      .slice(0, 3);
  }

  ngAfterViewInit(): void {
  }



}
