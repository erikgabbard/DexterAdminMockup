import { Component, ViewEncapsulation } from "@angular/core";
import { MatSnackBar, MatDialog } from "@angular/material";
import { MatListModule } from "@angular/material/list";
import { NgForm, FormControl, Validators, FormGroup } from "@angular/forms";
import { ILimitInfo } from "../../core/domain/limit-info";
import { LimitsPocService } from "../../core/services/limits-poc.service";
import { LoadingSpinnerComponent } from "../../loading-spinner/loading-spinner.component";

@Component({
  selector: "app-ops-limits",
  templateUrl: "./limits.component.html",
  styleUrls: ["./limits.component.scss"],
  encapsulation: ViewEncapsulation.None
})
export class LimitsComponent {
  title = "OPS2: Order Limits";
  limitsForm: FormGroup;
  limitInfo: ILimitInfo;
  isLoading = false;

  constructor(
    private limitApi: LimitsPocService,
    public snackBar: MatSnackBar,
    public loadingSpinner: MatDialog
  ) {
    this.limitInfo = {} as ILimitInfo;
    this.limitInfo.newLimit = undefined;

    this.limitsForm = new FormGroup({
      costCenterId: new FormControl({ value: "", disabled: true }),
      limit: new FormControl({ value: "", disabled: true }),
      onOrder: new FormControl({ value: "", disabled: true }),
      lastOrder: new FormControl({ value: "", disabled: true }),
      inCart: new FormControl({ value: "", disabled: true }),
      cartOwner: new FormControl({ value: "", disabled: true }),
      marshaCode: new FormControl("", Validators.required),
      newLimit: new FormControl("", Validators.required)
    });
  }

  getLimitInfo() {
    this.isLoading = true;
    this.openLoadingSpinner();
    this.limitInfo.marshaCode = this.limitInfo.marshaCode.toLocaleUpperCase();
    this.limitApi.getLimitInfo(this.limitInfo.marshaCode).subscribe(
      apiResponse => {
        this.limitInfo = apiResponse;
        this.limitInfo.newLimit = undefined;
        this.isLoading = false;
        this.loadingSpinner.closeAll();
      },
      error => {
        if (error.status === 404) {
          this.snackBar.open(
            `MARSHA code ${this.limitInfo.marshaCode} could not be found.`,
            "Close"
          );
          this.limitInfo.marshaCode = "";
        } else {
          // Display a dialog showing the server error.
          // But for the time being, just log it to the console.
          console.log("error in component", error);
        }
      }
    );
  }

  onSubmit() {
    this.isLoading = true;
    this.openLoadingSpinner();
    if (this.limitsForm.valid) {
      this.limitApi.updateLimitInfo(this.limitInfo).subscribe(apiResponse => {
        this.limitInfo = apiResponse.json();
        this.limitInfo.newLimit = undefined;
        this.isLoading = false;
        this.loadingSpinner.closeAll();
        this.snackBar.open(
          `Limit updated to ${this.limitInfo.limit}.`,
          "Close"
        );
      });
    }
  }

  openLoadingSpinner(): void {
    const dialogRef = this.loadingSpinner.open(LoadingSpinnerComponent, {
      data: { loading: true }
    });
  }
}
