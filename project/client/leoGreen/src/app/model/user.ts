export class User{
  id: number
  name: string
  points: number

  hasVoted: boolean

  constructor(id: number, name: string, points: number, hasVoted: boolean) {
    this.id = id;
    this.name = name;
    this.points = points;
    this.hasVoted = hasVoted;
  }
}
