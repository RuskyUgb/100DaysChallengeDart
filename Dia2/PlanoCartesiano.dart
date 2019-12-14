import 'dart:io';

class punto{

  int X;
  int Y;

  punto({int X = 0,int Y = 0}){
    this.X = X;
    this.Y = Y;
  }

  String toString() => "($X , $Y)";


  String cuadrante(){

    if(this.X > 0 && this.Y > 0){
      return "Cuadrante 1";
    }else if(this.X < 0 && this.Y > 0){
      return "Cuadrante 2" ;
    }else if(this.X < 0 && this.Y < 0){
      return "Cuadrante 3" ;
    }else if(this.X > 0 && this.Y < 0){
      return "Cuadrante 4";
    }else if(X == 0 && Y!=0){
      return "Situado en el eje Y";
    }else if(this.X != 0 && Y == 0){
      return "Situado en el eje X";
    }else{
      return "Situado sobre el origen" ;
    }
  }


  String vector(int X2,int Y2){

    var a = this.X - X2;
    var b = this.Y - Y2;

    return "Ab:($a , $b)";
  }

}



void main(){

  print("Ingrese los siguientes puntos");

  print("X1");
  String puntoX1 = stdin.readLineSync();
  print("Y1");
  String puntoY1 = stdin.readLineSync();

  print("Ingrese los siguientes puntos");

  print("X2");
  String puntoX2 = stdin.readLineSync();
  print("Y2");
  String puntoY2 = stdin.readLineSync();


//Uso de parametros nombrados

  var P1 = new punto(X:int.parse(puntoX1),Y:int.parse(puntoY1));
  
  print(P1.toString() + " " + P1.cuadrante());

  print(P1.vector(int.parse(puntoX2), int.parse(puntoY2)));
  


}