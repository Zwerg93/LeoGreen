import {Image} from "./img.model";

export interface Lesson {
  id: number,
  title : string,
  description: string,
  summary: string,
  content: String,
  pictureList: Image[]
}
