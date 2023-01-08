import {User} from "./user";
import {Quiz} from "./quiz";

export class Game {
  id: number
  state: number
  users: User[]
  quiz: Quiz

  constructor(id: number, state: number, users: User[], quiz: Quiz) {
    this.id = id;
    this.state = state;
    this.users = users;
    this.quiz = quiz;
  }
}
