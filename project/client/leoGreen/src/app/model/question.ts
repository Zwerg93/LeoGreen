import {Answer} from "./answer";

export class Question{
  id: number
  title: string
  answers: Answer[]
  correctAnswer: Answer

  constructor(id: number, title: string, answers: Answer[], correctAnswer: Answer) {
    this.id = id;
    this.title = title;
    this.answers = answers;
    this.correctAnswer = correctAnswer;
  }
}
