import { TestBed, inject } from '@angular/core/testing';

import { LimitsPocService } from './limits-poc.service';

describe('LimitsPocService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [LimitsPocService]
    });
  });

  it('should be created', inject([LimitsPocService], (service: LimitsPocService) => {
    expect(service).toBeTruthy();
  }));
});
