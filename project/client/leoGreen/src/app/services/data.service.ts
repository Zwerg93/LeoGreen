import { Injectable } from '@angular/core';
import {Card} from "../model/card.model";
import {ImgModel} from "../model/img.model";

@Injectable({
  providedIn: 'root'
})
export class DataService {
  cards?: Card[]
  imgs? : ImgModel[]

  constructor() { }
}
