import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { RouterModule, Routes } from "@angular/router";
import { AppRoutingModule } from "../app-routing.module";
import { FlexLayoutModule } from "@angular/flex-layout";
import { DashboardComponent } from "./dashboard.component";

@NgModule({
  imports: [CommonModule, AppRoutingModule, RouterModule, FlexLayoutModule],
  declarations: [DashboardComponent]
})
export class DashboardModule {}
