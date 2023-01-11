import {Component} from '@angular/core';
import {FormControl, FormGroup, Validators} from "@angular/forms";
import {MatSnackBar} from '@angular/material/snack-bar';
import {ActivatedRoute, Router} from "@angular/router";
import {GameService} from "../../../services/game.service";

@Component({
  selector: 'app-quiz-client-join-page',
  templateUrl: './quiz-client-join-page.component.html',
  styleUrls: ['./quiz-client-join-page.component.scss']
})
export class QuizClientJoinPageComponent {

  beitretenForm = new FormGroup(
    {
      quizId: new FormControl('', [Validators.required, Validators.pattern(/([0-9])+/)]),
      username: new FormControl('', [Validators.required])
    }
  );

  constructor(private gameService: GameService, private snackBar: MatSnackBar, private router: Router, private route: ActivatedRoute) {
    route.queryParams.subscribe(params => {
      this.beitretenForm.controls['quizId'].setValue(params['code']);
    })
  }

  join() {
    if (this.beitretenForm.controls.quizId.value == "11111") {
      this.router.navigate(['/quiz/client-answer'])
    } else {
      this.snackBar.open("Quiz room could not be found", undefined, {
          duration: 5 * 1000
        }
      )
    }
  }
}
