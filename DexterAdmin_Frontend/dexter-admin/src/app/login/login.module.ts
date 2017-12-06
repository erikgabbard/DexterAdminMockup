import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LoginComponent } from './login.component';
import { AccountDialogComponent } from './account-dialog/account-dialog.component';
import { MatButtonModule, MatCardModule, MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { FlexLayoutModule } from '@angular/flex-layout';

@NgModule({
  imports: [
    CommonModule,
    MatButtonModule,
    MatCardModule,
    FlexLayoutModule
  ],
  declarations: [LoginComponent, AccountDialogComponent],
  exports: [LoginComponent, AccountDialogComponent],
  entryComponents: [LoginComponent, AccountDialogComponent]
})
export class LoginModule { }
