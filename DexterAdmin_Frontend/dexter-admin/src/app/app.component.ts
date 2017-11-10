import { Component } from '@angular/core';
import { MatListModule } from '@angular/material/list';
import { ILimitInfo } from './limit-info';
import { NgForm, FormControl, Validators, FormGroup } from '@angular/forms';
import { LimitsPocService } from './services/limits-poc.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  limitsForm: FormGroup;
  limitInfo: ILimitInfo;
  isLoading = false;

  constructor(private limitApi: LimitsPocService) {
    this.limitInfo = {} as ILimitInfo;
    this.limitsForm = new FormGroup({
      costCenterId: new FormControl({ value: '', disabled: true }),
      limit: new FormControl({ value: '', disabled: true }),
      onOrder: new FormControl({ value: '', disabled: true }),
      lastOrder: new FormControl({ value: '', disabled: true }),
      inCart: new FormControl({ value: '', disabled: true }),
      cartOwner: new FormControl({ value: '', disabled: true }),
      marshaCode: new FormControl('', Validators.required),
      newLimit: new FormControl('', Validators.required)
    });
  }

  getLimitInfo() {
    this.isLoading = true;
    this.limitInfo.marshaCode = this.limitInfo.marshaCode.toLocaleUpperCase();
    this.limitApi.getLimitInfo(this.limitInfo.marshaCode)
      .subscribe(
        apiResponse => {
          console.log('response in component', apiResponse);
          this.limitInfo = apiResponse;
          this.isLoading = false;
        },
        error => {
          if (error.status === 404) {
            console.log(404);
          }
          console.log('error in component', error);
      });
  }

  onSubmit() {
    if (this.limitsForm.valid) {
      console.log('limit info', this.limitInfo);
      this.limitApi.updateLimitInfo(this.limitInfo)
        .subscribe(apiResponse => {
          console.log('new limit info', apiResponse);
          // maybe display a saved message
        });
    }
  }

}
