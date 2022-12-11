import {Injectable} from '@angular/core';
import {BehaviorSubject} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class GameService {

  game: BehaviorSubject<any> = new BehaviorSubject<any>({
    name: 'Starterquiz',
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
      },
      {
        name: 'Thisisaverylongname'
      },
      {
        name: 'Marcel'
      },
      {
        name: 'Marcel'
      },
      {
        name: 'Marcel'
      },
      {
        name: 'Marcel'
      },
      {
        name: 'Marcel'
      },
      {
        name: 'Marcel'
      },
      {
        name: 'Marcel'
      },


    ],
    sections: [{name: "CO2 Ausstoß", id: 1}],
    questions: [
      {
        header: "Wie viel CO2 Ausstoss entsteht in einem Jahr auf der ganzen Welt?",
        answers: [{
          text: "30 kg",
          validAnswer: false
        },
          {
            text: "4.000 kg",
            validAnswer: false
          },
          {
            text: "2 kg",
            validAnswer: false
          },
          {
            text: "165.000 kg",
            validAnswer: true
          }
        ]
      },
      {
        header: "Wie viele Autos waren 2021 in privaten Besitz?",
        answers: [{
          text: "3.4 Millionen",
          validAnswer: false
        },
          {
            text: "6.4 Millionen",
            validAnswer: false
          },
          {
            text: "5.1 Millionen",
            validAnswer: true
          },
          {
            text: "7 Millionen",
            validAnswer: false
          }
        ]
      },
      {
        header: "Wie viele Flüge flogen 2021 von Österreichs Flunghäfen ab?",
        answers: [{
          text: "62.000",
          validAnswer: true
        },
          {
            text: "16.0000",
            validAnswer: false
          },
          {
            text: "64.000",
            validAnswer: true
          },
          {
            text: "140.000",
            validAnswer: false
          }
        ]
      },
      {
        header: "Was ist die coolste Umweltquiz App?",
        answers: [{
          text: "Leogreen",
          validAnswer: true
        },
          {
            text: "Qumwelt",
            validAnswer: false
          },
          {
            text: "Leotopia",
            validAnswer: true
          },
          {
            text: "Kahoot",
            validAnswer: false
          }
        ]
      }
    ],
    currentQuestion: 0
  });

  constructor() {
  }
}
