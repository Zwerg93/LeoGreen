import {Image} from "./img.model";

export interface Lesson {
  id: number,
  title : string,
  description: string,
  summary: string,
  content: String,
  sections: Section[]
}

export interface Section {
  header: string
  content: string
  images: Image[]
  type: SectionType
}

export enum SectionType {
  FIFTY, TWENTY, TWENTYFIVE, SEVENTYFIVE, EIGHTY, IMAGE, TEXT
}
