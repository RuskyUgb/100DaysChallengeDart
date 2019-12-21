import 'Traumatologia.dart';
import 'Pediatria.dart';
import 'Ginecobstreticia.dart';

void main(){

  var PresupuestoAnual = 1000000.0;
  var Traumatologia1 = new Traumatologia("traumatologia",PresupuestoAnual);
  var Pediatria1 = new Pediatria("Pediatria", PresupuestoAnual);
  var Gine = new Ginecob("Ginecobstreticia", PresupuestoAnual);

  Traumatologia1.showPresupuesto();  
  Pediatria1.showPresupuesto();
  Gine.showPresupuesto();
  


}