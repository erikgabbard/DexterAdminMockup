import {
  Component,
  OnInit,
  NgZone,
  ViewEncapsulation,
  Inject
} from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { MatButtonModule, MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';

import { AuthService } from '../core/services/auth.service';
import { environment } from '../../environments/environment';
import { AccountDialogComponent } from './account-dialog/account-dialog.component';

import * as firebase from 'firebase/app';
import * as firebaseui from 'firebaseui';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
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

  login() {
    this.authService.googleLogin();
  }

  openDialog(): void {
    const dialogRef = this.dialog.open(AccountDialogComponent, {
      data: { user: this.loggedInUser }
    });

    dialogRef.afterClosed().subscribe(dialogResult => {
      if (dialogResult) {
        this.authService.signOut();
        document.location.assign(
          `https://accounts.google.com/Logout?continue=${environment.host}`
        );
      }
    });
  }
}
