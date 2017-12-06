import {
  Component,
  OnInit,
  NgZone,
  ViewEncapsulation,
  Inject
} from '@angular/core';

import {
  MatButtonModule,
  MatCardModule,
  MatDialog,
  MatDialogRef,
  MAT_DIALOG_DATA
} from '@angular/material';

import * as firebase from 'firebase/app';
import * as firebaseui from 'firebaseui';

@Component({
  selector: 'app-account-dialog',
  templateUrl: './account-dialog.component.html',
  styleUrls: ['./account-dialog.component.scss'],
  encapsulation: ViewEncapsulation.None
})
export class AccountDialogComponent {
  user: firebase.User;

  constructor(
    public dialogRef: MatDialogRef<AccountDialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any
  ) {
    this.user = data.user;
  }

  signOut(): void {
    this.dialogRef.close(true);
  }
}
