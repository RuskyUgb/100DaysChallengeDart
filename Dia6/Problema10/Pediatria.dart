import 'Especialidad.dart';


class Pediatria extends Especialidad{

    final PorcentajeDesignado  = 0.30;

    Pediatria(String Nombre,double Pre): super(Nombre, Pre){
      this.Presupuesto = this.getPresupuestoAnual * PorcentajeDesignado;
    }

 
}