import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";

import { AppComponent } from "./app.component";
import { AuthGuard } from "./core/services/auth.guard";
import { LimitsComponent } from "./ops2/limits/limits.component";
import { LoginComponent } from "./login/login.component";
import { DashboardComponent } from "./dashboard/dashboard.component";
import { HomeComponent } from "./home/home.component";

const routes: Routes = [
  {
    path: "ops2/limits",
    component: LimitsComponent,
    data: {
      name: "OPS2 Limits"
    },
    canActivate: [AuthGuard]
  },
  {
    path: "home",
    component: HomeComponent,
    data: {
      name: "Home"
    },
    canActivate: [AuthGuard]
  },
  {
    path: "",
    component: HomeComponent,
    data: {
      name: "Home"
    },
    canActivate: [AuthGuard]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
