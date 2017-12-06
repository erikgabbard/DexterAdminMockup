import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {
  MatProgressSpinnerModule,
  MAT_DIALOG_DATA,
  MatDialogRef
} from '@angular/material';

import { LoadingSpinnerComponent } from './loading-spinner.component';
import { FlexLayoutModule } from '@angular/flex-layout';

@NgModule({
  imports: [
    CommonModule,
    MatProgressSpinnerModule
  ],
  declarations: [LoadingSpinnerComponent],
  exports: [LoadingSpinnerComponent],
  entryComponents: [LoadingSpinnerComponent]
})
export class LoadingSpinnerModule {}
