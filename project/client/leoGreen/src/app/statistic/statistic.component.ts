import { Component, OnInit } from '@angular/core';
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-statistic',
  templateUrl: './statistic.component.html',
  styleUrls: ['./statistic.component.scss']
})
export class StatisticComponent implements OnInit {
  selectetFile: any;
  constructor(private http: HttpClient) { }

  ngOnInit(): void {
  }
  // @ts-ignore
  onFIleSelected(event) {
    console.log(event)
    this.selectetFile = <File>event.target.files[0];
  }

  onUpload() {
    var output =this.selectetFile.name.replace(/[\[\]']+/g,'');

    const fd = new FormData();

    fd.append('uploadedFile', this.selectetFile, output);

    this.http.post('http://localhost:8080/picture/upload', fd).subscribe(
      result => {
      },
      error => {
        // @ts-ignore
        this.errors = error;
        document.getElementById("showresult")!.innerHTML = "<fieldset>\n" +
          "    <div >\n" +
          "<p>Error. Pls try again!</p>" +
          "    </div>\n" +
          "  </fieldset>"
      },
      () => {
        document.getElementById("showresult")!.innerHTML = "<fieldset>\n" +
          "    <div >\n" +
          "<p>Succes!</p>" +
          "    </div>\n" +
          "  </fieldset>"
      }
    );
  }

}
