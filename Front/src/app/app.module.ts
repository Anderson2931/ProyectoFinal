import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { SobreNosotrosComponent } from './sobre-nosotros/sobre-nosotros.component';
import { ServiciosComponent } from './servicios/servicios.component';
import { BebidasComponent } from './bebidas/bebidas.component';
import { ReservasComponent } from './reservas/reservas.component';
import { LoginComponent } from './login/login.component';
import { RegistroComponent } from './registro/registro.component';
import { RecuperarClaveComponent } from './recuperar-clave/recuperar-clave.component';
import { SnackComponent } from './snack/snack.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    SobreNosotrosComponent,
    ServiciosComponent,
    BebidasComponent,
    ReservasComponent,
    LoginComponent,
    RegistroComponent,
    RecuperarClaveComponent,
    SnackComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
