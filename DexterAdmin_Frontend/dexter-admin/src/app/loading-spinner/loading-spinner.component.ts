import { Component, OnInit, ViewEncapsulation, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material';

@Component({
  selector: 'app-loading-spinner',
  templateUrl: './loading-spinner.component.html',
  styleUrls: ['./loading-spinner.component.scss'],
  encapsulation: ViewEncapsulation.Emulated
})

export class LoadingSpinnerComponent implements OnInit {

  constructor(
    public dialogRef: MatDialogRef<LoadingSpinnerComponent>,
    @Inject(MAT_DIALOG_DATA) public loading: boolean) { }

  ngOnInit() {
  }

}
