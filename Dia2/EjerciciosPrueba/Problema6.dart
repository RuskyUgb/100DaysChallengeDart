//Un vendedor recibe un sueldo base, mas un 10% extra por comisiones de sus ventas, el vendedor
// desea saber cuanto dinero obtendra por concepto de comisiones por las tres ventas que realizo en el mes
// y el total que recibira en el mes tomando en cuenta su sueldo base y sus comisiones
class empleado{

  var nombre;
  var sueldoBase;

  empleado(this.nombre,this.sueldoBase);

  set setNombre(String nom){
    this.nombre = nom;
  }  

  get getNombre{
    return this.nombre;
  }

  set setSueldoBase(double sueldoB){
    this.sueldoBase = sueldoB;
  }

  get getSueldoBase{
    return this.sueldoBase;
  }

}

abstract class IRealizarVenta{

  void ventasRealizadas();

}

class Vendedor extends empleado implements IRealizarVenta{


  var comisionPorcentaje = 0.10;
  var Venta1,Venta2,Venta3;

  double comision;
  
  double totalARecibir;


  Vendedor(String nom,double SueldoB,this.Venta1,this.Venta2,this.Venta3) : super(nom,SueldoB);

  @override
  void ventasRealizadas(){

     var ventaTotalMensual  = (Venta1 + Venta2 + Venta3) * comisionPorcentaje;
     this.comision = ventaTotalMensual;

  }

  set setVentaTotalComision(double newComision){
    this.comision = newComision;
  }
 
  get getVentaTotalComision{
    return this.comision;
  }

  double calculoTotalRecibir(){
    totalARecibir = this.sueldoBase + this.comision;
    return totalARecibir;
  }


}


void main(){

  var Vendedor1 = new Vendedor("Joaquin", 600.00,500.00,400.00,300.00);
  Vendedor1.ventasRealizadas();
  
  double ComisionXVenta = Vendedor1.getVentaTotalComision;
  print("Comision por las tres ventas: " + ComisionXVenta.toString());

  double TotalaRecibir = Vendedor1.calculoTotalRecibir();
  print("Calculo total a recibir: " + TotalaRecibir.toString());


}