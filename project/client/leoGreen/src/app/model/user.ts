export class User{
  id: number
  name: string
  points: number


  constructor(id: number, name: string, points: number = 0) {
    this.id = id;
    this.name = name;
    this.points = points;
  }
}
