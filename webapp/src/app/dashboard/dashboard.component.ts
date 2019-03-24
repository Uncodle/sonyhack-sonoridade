import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent implements OnInit {


  public form : FormGroup = new FormGroup({
    'name': new FormControl( null, [
      Validators.required
    ] ),
    'lastname': new FormControl( null, [
      Validators.required
    ] ),
    'email': new FormControl( null, [
      Validators.required
    ] ),
    'password': new FormControl( null, [
      Validators.required
    ] ),
    'birthday': new FormControl( null, [
      Validators.required
    ] ),
    'gender': new FormControl( null, [
      Validators.required
    ] )    
  });

  
  constructor() { }

  ngOnInit() {
  }

  public register(){
    console.log( this.form );
  }
}
