import 'Especialidad.dart';


class Ginecob extends Especialidad{

    final PorcentajeDesignado  = 0.40;

    Ginecob(String Nombre,double Pre): super(Nombre, Pre){
      this.Presupuesto = this.getPresupuestoAnual * PorcentajeDesignado;
    }

 
}