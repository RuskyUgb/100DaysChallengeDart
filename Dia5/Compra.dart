import 'dart:io';

abstract class IMakeReport{

  void CrearReporte();
}

class Compra implements IMakeReport{

  var Descuento = 0.15;
  var DescuentoAplicado;
  var TotalCompra,TotalPagar;

  Compra(this.TotalCompra,[this.TotalPagar = 0]);

  double aplicarDescuento(){

      DescuentoAplicado = TotalCompra * Descuento;
      return DescuentoAplicado;
  }

  void totalPagar(){

      TotalPagar = TotalCompra - this.DescuentoAplicado;

  }

  set setTotalPagar(var TotalP){
    TotalPagar = TotalP;
  }

  get getTotalPagar{
    return this.TotalPagar;
  }

  @override
  CrearReporte(){

      var FileR = new File("ReporteDeVenta.txt");
      var CrearReporte = FileR.openWrite();
      CrearReporte.write(' Cantidad de compra: ${this.TotalCompra}\n Descuento aplicado: ${this.DescuentoAplicado}\n Total a pagar de la compra: ${this.TotalPagar}');
      CrearReporte.close();
  }

  
}