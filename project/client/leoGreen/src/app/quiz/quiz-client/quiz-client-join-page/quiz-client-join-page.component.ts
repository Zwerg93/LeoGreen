import {Component} from '@angular/core';
import {AbstractControl, FormControl, FormGroup, Validators} from "@angular/forms";
import {MatSnackBar} from '@angular/material/snack-bar';
import {ActivatedRoute, Router} from "@angular/router";
import {GameService} from "../../../services/game.service";
import {Subscriber, Subscription} from "rxjs";

const naughtyWordList = require("naughty-words")

@Component({
  selector: 'app-quiz-client-join-page',
  templateUrl: './quiz-client-join-page.component.html',
  styleUrls: ['./quiz-client-join-page.component.scss']
})
export class QuizClientJoinPageComponent {

  subscriber ?: Subscription

  beitretenForm = new FormGroup(
    {
      quizId: new FormControl('', [Validators.required, Validators.pattern(/([0-9])+/)]),
      username: new FormControl('', [Validators.required, this.ValidateNaughtyWords])
    }
  );

  constructor(private gameService: GameService, private snackBar: MatSnackBar, private router: Router, private route: ActivatedRoute) {
    route.queryParams.subscribe(params => {
      this.beitretenForm.controls['quizId'].setValue(params['code']);
    })
  }

  join() {
    if (this.beitretenForm.valid) {
      //this.subscriber?.unsubscribe()
      this.gameService.startWebsocket(Number(this.beitretenForm.value.quizId), this.beitretenForm.value.username!).subscribe(
        value => {
          console.log(value)
          if(value){
          this.router.navigate(['/quiz/client-answer'])
        }}
      )
    } else {
      this.snackBar.open("Quiz room could not be found", undefined, {
          duration: 5 * 1000
        }
      )
    }
  }

  ValidateNaughtyWords(control: AbstractControl){
    const naughtyFun = (naughtyWord: string) => {
      return new RegExp(`(${naughtyWord})|(${naughtyWord[0]}\\*)`, "i").test(control.value)
    }

    if (naughtyWordList != undefined &&
        (naughtyWordList.en.some(naughtyFun) || naughtyWordList.de.some(naughtyFun))) {
      return {naughty: true}
    }
    return null
  }

}

