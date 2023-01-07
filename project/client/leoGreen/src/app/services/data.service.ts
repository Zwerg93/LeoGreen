import { Injectable } from '@angular/core';
import {Card} from "../model/card.model";

@Injectable({
  providedIn: 'root'
})
export class DataService {
  cards?: Card[]


  constructor() { }
}
