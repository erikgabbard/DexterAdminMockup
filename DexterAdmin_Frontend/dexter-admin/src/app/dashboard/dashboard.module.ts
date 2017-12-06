import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { AppRoutingModule } from '../app-routing.module';
import { FlexLayoutModule } from '@angular/flex-layout';
import { DashboardComponent } from './dashboard.component';
import { MatMenuModule, MatButtonModule } from '@angular/material';
import { Ops2Module } from '../ops2/ops2.module';
import { HomeModule } from '../home/home.module';

@NgModule({
  imports: [
    CommonModule,
    AppRoutingModule,
    RouterModule,
    FlexLayoutModule,
    MatMenuModule,
    MatButtonModule,
    Ops2Module,
    HomeModule
  ],
  declarations: [DashboardComponent],
  exports: [DashboardComponent]
})
export class DashboardModule {}
