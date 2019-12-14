import 'dart:io';

class punto {
  int X;
  int Y;

  punto({int X = 0, int Y = 0}) {
    this.X = X;
    this.Y = Y;
  }

  String toString() => "($X , $Y)";

  String cuadrante() {
    if (this.X > 0 && this.Y > 0) {
      return "Cuadrante 1";
    } else if (this.X < 0 && this.Y > 0) {
      return "Cuadrante 2";
    } else if (this.X < 0 && this.Y < 0) {
      return "Cuadrante 3";
    } else if (this.X > 0 && this.Y < 0) {
      return "Cuadrante 4";
    } else if (X == 0 && Y != 0) {
      return "Situado en el eje Y";
    } else if (this.X != 0 && Y == 0) {
      return "Situado en el eje X";
    } else {
      return "Situado sobre el origen";
    }
  }

  String vector(int X2, int Y2) {
    var a = this.X - X2;
    var b = this.Y - Y2;

    return "Ab:($a , $b)";
  }
}

void main() {
  int eleccionCoordenadas;
  var OpcionContinuar;
  //var puntooo = new List<punto>();
  //List para almacenar objeto de tipo punto
  List<punto> Coordenadas = new List<punto>(); //Inicializar la list
//Las coordenadas incluyen dos puntos X , Y
  
  print("Cuantas coordenadas creará");
  eleccionCoordenadas = int.parse(stdin.readLineSync());

  while (OpcionContinuar != "No") {
    for (var i = 1; i <= eleccionCoordenadas; i++) {

     
      print("Ingrese el punto X" + i.toString());
      var puntoX = stdin.readLineSync();
      print("Intese el punto Y" + i.toString());
      var puntoY = stdin.readLineSync();



      Coordenadas.add(new punto(X: int.parse(puntoX), Y: int.parse(puntoY)));

    }


    print("Desea continuar?");
    print("Escriba Si ó No");

    OpcionContinuar = stdin.readLineSync();

  }


  print(Coordenadas.length);

  for(int CoorD = 0;CoorD<Coordenadas.length;CoorD++){
    
    print("Datos de coordenadas:"  
          + Coordenadas[CoorD].toString()
          + Coordenadas[CoorD].cuadrante()
          );

    
    
  
  }
          
 


  //puntooo.add(new punto(X:3,Y:2));

  //Coordenadas.add(new punto(X:5,Y:5));

  //print(Coordenadas[0].toString());
  //print(Coordenadas[1].toString());
  print(Coordenadas[0].vector(Coordenadas[1].X, Coordenadas[1].Y));
}
