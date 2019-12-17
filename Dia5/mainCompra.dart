import 'Compra.dart';
import 'dart:io';
void main(){

    String SiNo;
 
    print("Ingrese la cantidad de la compra ");
    var CompraRealizada = stdin.readLineSync();
    var Compra1 = new Compra(double.parse(CompraRealizada));

    print("Descuento aplicado de: " + Compra1.aplicarDescuento().toString());
    Compra1.totalPagar();
    print("Total a pagar de la compra: " + Compra1.getTotalPagar.toString());

    print("Desea generar un reporte? Escriba: Si - No" );
    SiNo = stdin.readLineSync();

    switch(SiNo){
      case "Si": 
        Compra1.CrearReporte();
        break;
      case "No":
        print("Tarea Finalizada");
        break;
      default:
        print("Tarea Finalizada");
    }
    
  

}