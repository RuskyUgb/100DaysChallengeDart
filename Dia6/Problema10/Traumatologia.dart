import 'Especialidad.dart';


class Traumatologia extends Especialidad{

    final PorcentajeDesignado  = 0.30;

    Traumatologia(String Nombre,double Pre): super(Nombre, Pre){
      this.Presupuesto = this.getPresupuestoAnual * PorcentajeDesignado;
    }

 
}