import {Component,  OnInit} from '@angular/core';
import {NavbarService} from "./navbar.service";

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent implements OnInit {

  header_content = ""

  constructor(private nav_service: NavbarService) {
    this.header_content = NavbarService.original_navbar_header
    this.nav_service.observe_nav_header().subscribe((new_header_content) => {
      this.header_content = new_header_content
    })
    this.nav_service.change_nav_header_content(NavbarService.original_navbar_header)
  }

  ngOnInit(): void {
  }

}
