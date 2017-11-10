import { Injectable } from '@angular/core';
import { Http, Response, Headers, ResponseContentType } from '@angular/http';
import { environment } from '../../environments/environment';
import { Observable } from 'rxjs/Observable';
import { ILimitInfo } from '../limit-info';

import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';

@Injectable()
export class LimitsPocService {

  constructor(private http: Http) { }

  protected createRequestHeaders(): Headers {
    const headers = new Headers();
    headers.append('Pragma', 'no-cache');
    headers.append('Expires', '-1');
    headers.append('Cache-Control', 'no-cache');
    headers.append('Accept', 'application/json');
    // headers.append("Authorization", `Bearer ${authToken}`);
    return headers;
  }

  getLimitInfo(marshaCode: string): Observable<ILimitInfo> {
    const headers = this.createRequestHeaders();
    headers.append('Content-Type', 'application/json');
    return this.http.get(`${environment.limitsApiEndpoint}/GetLimitInfo/${marshaCode}`, { headers: headers })
      .map(result => {
        return result.json();
      });
  }

  updateLimitInfo(limitInfo: ILimitInfo): Observable<any> {
    const headers = this.createRequestHeaders();
    headers.append('Content-Type', 'application/json');

    const body = JSON.stringify(limitInfo);
    const url = `${environment.limitsApiEndpoint}/SetLimit`;

    return this.http.post(url, body, { headers: headers })
      .map(res => res);
  }

}
