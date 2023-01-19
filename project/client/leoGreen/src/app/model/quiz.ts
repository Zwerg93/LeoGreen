import {Question} from "./question";

export class Quiz{
  id: number
  topic: string
  questions: Question[]

  constructor(id: number, topic: string, questions: Question[]) {
    this.id = id;
    this.topic = topic;
    this.questions = questions;
  }
}
