import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MulheresNaMusicaComponent } from './mulheres-na-musica.component';

describe('MulheresNaMusicaComponent', () => {
  let component: MulheresNaMusicaComponent;
  let fixture: ComponentFixture<MulheresNaMusicaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MulheresNaMusicaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MulheresNaMusicaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
