import { Component, OnInit, ViewChild } from '@angular/core';
import { DashboardComponent } from './dashboard/dashboard.component';
import { ActivatedRoute, Router, NavigationEnd } from '@angular/router';
import 'rxjs/add/operator/filter';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  @ViewChild('sidenav') sidenav: any;
  isLoading = false;
  siteTitle = 'Dexter Admin';
  pageTitle: string;

  constructor(private router: Router, private route: ActivatedRoute) {}

  ngOnInit() {
    this.router.events
      .filter(event => event instanceof NavigationEnd)
      .subscribe(event => {
        this.sidenav.close();
        let currentRoute = this.route.root;
        while (currentRoute.children[0] !== undefined) {
          currentRoute = currentRoute.children[0];
        }
        this.pageTitle = currentRoute.snapshot.data.name;
      });
  }
}
