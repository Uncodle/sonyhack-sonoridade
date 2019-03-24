import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { HomepageComponent } from './homepage/homepage.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { HeaderComponent } from './header/header.component';
import { MulheresNaMusicaComponent } from './mulheres-na-musica/mulheres-na-musica.component';

const appRoutes = [
   { path: '', component: HomepageComponent },
   { path: 'dashboard', component: DashboardComponent },
   { path: 'mulheres-na-musica/mahmundi', component: MulheresNaMusicaComponent }
]

@NgModule({
  declarations: [
    AppComponent,
    HomepageComponent,
    DashboardComponent,
    HeaderComponent,
    MulheresNaMusicaComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    RouterModule.forRoot(appRoutes)

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
