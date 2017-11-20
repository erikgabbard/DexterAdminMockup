import { Component, OnInit, NgZone, ViewEncapsulation, Inject } from "@angular/core";
import { Observable } from "rxjs/Observable";
import { AngularFireAuth } from "angularfire2/auth";
import * as firebase from "firebase/app";
import * as firebaseui from "firebaseui";
import { FirebaseUISignInSuccess } from "firebaseui-angular";
import { AuthService } from "../core/services/auth.service";
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from "@angular/material";

@Component({
  selector: "app-login",
  templateUrl: "./login.component.html",
  styleUrls: ["./login.component.scss"],
  encapsulation: ViewEncapsulation.None
})
export class LoginComponent implements OnInit {
  loggedInUser: firebase.User;
  expanded = false;

  constructor(private authService: AuthService, public dialog: MatDialog) {}

  ngOnInit(): void {
    this.authService.user.subscribe(u => {
      this.loggedInUser = u;
    });
  }

  logout() {
    this.authService.signOut();
  }

  openDialog(): void {
    const dialogRef = this.dialog.open(AccountDialogComponent, {
      data: { user: this.loggedInUser }
    });

    dialogRef.afterClosed().subscribe(resetResult => {
      if (resetResult) {
        this.authService.signOut();
      }
    });
  }
}

@Component({
  selector: "app-account-dialog",
  templateUrl: "./account-dialog.component.html",
  styleUrls: ["./login.component.scss"]
})
export class AccountDialogComponent {

  user: firebase.User;

  constructor(
    @Inject(MAT_DIALOG_DATA) public data: any) {
      this.user = data.user;
    }

}
