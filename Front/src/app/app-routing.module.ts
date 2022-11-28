import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { BebidasComponent } from './bebidas/bebidas.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { RegistroComponent } from './registro/registro.component';
import { ReservasComponent } from './reservas/reservas.component';
import { ServiciosComponent } from './servicios/servicios.component';
import { SobreNosotrosComponent } from './sobre-nosotros/sobre-nosotros.component';
import { RecuperarClaveComponent } from './recuperar-clave/recuperar-clave.component';
import { SnackComponent } from './snack/snack.component';

const routes: Routes = [
  {path:'', redirectTo: '/home', pathMatch: 'full'},
  {path:'home', component: HomeComponent},
  {path:'bebidas', component: BebidasComponent},
  {path:'login', component: LoginComponent},
  {path:'registro', component: RegistroComponent},
  {path:'reservas', component: ReservasComponent},
  {path:'servicios', component: ServiciosComponent},
  {path:'sobre-nosotros', component: SobreNosotrosComponent},
  {path:'recuperar-clave', component: RecuperarClaveComponent},
  {path:'snack', component: SnackComponent},

  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
