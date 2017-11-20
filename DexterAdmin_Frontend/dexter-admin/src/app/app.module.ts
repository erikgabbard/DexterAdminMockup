import { BrowserModule } from "@angular/platform-browser";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { NgModule } from "@angular/core";
import { HttpModule } from "@angular/http";
import { FlexLayoutModule } from "@angular/flex-layout";
import { AppComponent } from "./app.component";
import { environment } from "../environments/environment";

import { LoadingSpinnerComponent } from "./loading-spinner/loading-spinner.component";
import { LoginComponent, AccountDialogComponent } from "./login/login.component";
import { DashboardComponent } from "./dashboard/dashboard.component";
import { Ops2Module } from "./ops2/ops2.module";
import { CoreModule } from "./core/core.module";
import { AppRoutingModule } from "./app-routing.module";
import { HomeComponent } from "./home/home.component";

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
  MatDialogModule,
  MatProgressSpinnerModule
} from "@angular/material";


@NgModule({
  declarations: [AppComponent, LoadingSpinnerComponent, LoginComponent, DashboardComponent, HomeComponent, AccountDialogComponent],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    HttpModule,
    FlexLayoutModule,
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
    MatProgressSpinnerModule,
    MatDialogModule,
    CoreModule,
    Ops2Module,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent],
  entryComponents: [LoadingSpinnerComponent, AccountDialogComponent]
})
export class AppModule {}
