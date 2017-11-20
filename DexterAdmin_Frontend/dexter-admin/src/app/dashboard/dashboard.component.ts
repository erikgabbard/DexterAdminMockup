import { Component, OnInit, ViewEncapsulation } from "@angular/core";
import { RouterModule, Router, Routes } from "@angular/router";
import { AppRoutingModule } from "../app-routing.module";
import { AuthService } from "../core/services/auth.service";
import * as firebase from "firebase/app";

import {
  MatButtonModule,
  MatSidenavModule,
  MatToolbarModule,
  MatExpansionModule,
  MatIconModule,
  MatListModule,
  MatMenuModule,
  MatCardModule,
  MatFormFieldModule,
  MatInputModule,
  MatSnackBarModule,
  MatDialogModule
} from "@angular/material";

@Component({
  selector: "app-dashboard",
  templateUrl: "./dashboard.component.html",
  styleUrls: ["./dashboard.component.scss"],
  encapsulation: ViewEncapsulation.None
})
export class DashboardComponent implements OnInit {
  loggedInUser: firebase.User;

  constructor(private authService: AuthService, private router: Router) {
    this.authService.user.subscribe(u => {
      this.loggedInUser = u;
    });
   }

  ngOnInit() {
  }

  onClick(route: string) {
    this.router.navigate([route]);
  }
}
