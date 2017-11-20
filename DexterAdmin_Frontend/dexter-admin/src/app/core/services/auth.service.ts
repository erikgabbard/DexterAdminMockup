import { Injectable } from "@angular/core";
import { Router } from "@angular/router";
import * as firebase from "firebase/app";
import { AngularFireAuth } from "angularfire2/auth";
import { Observable } from "rxjs/Observable";
import { User } from "firebase/app";

import "rxjs/add/operator/switchMap";
import { window } from "rxjs/operators/window";

@Injectable()
export class AuthService {
  authState: any;
  user: Observable<User>;
  constructor(private afAuth: AngularFireAuth, private router: Router) {
    this.afAuth.authState.subscribe((auth) => {
      this.authState = auth;
    });

    this.user = this.afAuth.authState.take(1);
  }

  googleLogin() {
    const provider = new firebase.auth.GoogleAuthProvider();
    return this.oAuthLogin(provider);
  }

  private oAuthLogin(provider) {
    return this.afAuth.auth.setPersistence(firebase.auth.Auth.Persistence.SESSION)
    .then(() => {
      return this.afAuth.auth.signInWithRedirect(provider);
    })
    .then((userCredentials) => {
      this.authState = userCredentials.user;
    });
  }

  signOut() {
    this.afAuth.auth.signOut();
      this.router.navigate(["home/"]);
  }
}
