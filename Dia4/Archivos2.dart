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


void main(){

  //Crear un archivo con los datos obtenidos 

  
  Map S = new Map();
  S = {
    "001":"Luis",
    "002":"Caballero",
    "003":"Cangrejo",
    "004":"Calamardo",
    "005":"Juanita"
  };

  var K = List<String>();
  var V = List<String>();

  List<punto> Coordenadas = new List<punto>();
  var  FCoordenadas = new File("Coordenadas.txt");
  var DatosMap = new File("Nombres.txt");

  Coordenadas.add(new punto(X:5,Y:2));
  Coordenadas.add(new punto(X: 3,Y:1));


//El method writeAsString como lo indica, unicamente escribe una linea nada mas si lo demas entra, se reemplaza
  FCoordenadas.writeAsString(Coordenadas[0].toString() + "\n" + Coordenadas[1].toString());

  S.forEach((k,v) {

      K.add(k.toString());
      V.add(v.toString());
    

  });



    
 



  
  var sink = DatosMap.openWrite();
  sink.write('{\n');
  //Con el metodo write es posible agregar o manipular el fichero para agregar mas informacion.
  for(var i=0;i<V.length;i++)
  {
  sink.write('\t${K[i]} : ${V[i]}\n');
  }
  // Close the IOSink to free system resources.
  sink.write('}');
  sink.close();
  


}