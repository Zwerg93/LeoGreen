import { Injectable } from '@angular/core';
import {Card} from "../model/card.model";
import {Image} from "../model/img.model";

@Injectable({
  providedIn: 'root'
})
export class DataService {
  cards?: Card[]
  imgs? : Image[]

  constructor() { }
}
