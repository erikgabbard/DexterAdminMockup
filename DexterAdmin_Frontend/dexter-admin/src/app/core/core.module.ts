import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { AngularFireModule } from "angularfire2";
import { AngularFireAuthModule, AngularFireAuth } from "angularfire2/auth";

import { environment } from "../../environments/environment";
import { LimitsPocService } from "./services/limits-poc.service";
import { AuthService } from "./services/auth.service";
import { AuthGuard } from "./services/auth.guard";

@NgModule({
  imports: [
    AngularFireAuthModule,
    AngularFireModule.initializeApp(environment.firebaseConfig),
  ],
  providers: [AuthService, AuthGuard]
})

export class CoreModule { }
