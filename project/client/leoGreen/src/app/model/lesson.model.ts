import {ImgModel} from "./img.model";

export interface LessonModel {
  id: number,
  title : string,
  description: string,
  summary: string,
  content: String,
  pictureList: ImgModel[]

}
