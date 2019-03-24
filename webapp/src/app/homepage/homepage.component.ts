import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';


@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.scss']
})
export class HomepageComponent implements OnInit {

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
