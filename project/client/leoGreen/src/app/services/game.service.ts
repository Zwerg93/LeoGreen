import {Injectable} from '@angular/core';
import {BehaviorSubject, Subject} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class GameService {

  game: BehaviorSubject<any> = new BehaviorSubject<any>({
    code: '123456',
    started: false,
    players: [
      {
        name: 'Fabian'
      },
      {
        name: 'Lorenz'
      },
      {
        name: 'Dominik'
      },
      {
        name: 'Marcel'
      }
    ],
    questions: [
      {
        header: "Wie viel CO2 Ausstoss entsteht in einem Jahr auf der ganzen Welt?",
        answers: [{
          text: "30 kg",
          validAnswer: false
        },
          {
            text: "4000 kg",
            validAnswer: false
          },
          {
            text: "2 kg",
            validAnswer: false
          },
          {
            text: "165000 kg",
            validAnswer: true
          }
        ]
      }
    ],
    currentQuestion: 0
  });

  constructor() {
  }
}
