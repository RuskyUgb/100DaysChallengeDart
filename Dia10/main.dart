import 'Persona.dart';
import 'dart:io';

void main(){

  //Pedir datos

  print("Ingrese su nombre");
  var Nombre = stdin.readLineSync();
  print("Ingrese su edad");
  int Edad = int.parse(stdin.readLineSync());
  print("Ingrese su Sexo H o F");
  String S = stdin.readLineSync();
  print("Ingrese su peso KG");
  double P = double.parse(stdin.readLineSync());
  print("Ingrese su altura");
  double A = double.parse(stdin.readLineSync());
  //Objetos

  var Persona2 = new Persona.Opcion2(Nombre, Edad, S);
  var Persona3 = new Persona(Nombre, Edad, S, P, A);
  var Persona1 = new Persona.Opcion3();

  Persona1.setN = "Lupe";
  Persona1.setEdad = 44 ;
  Persona1.setAltura = 1.50;
  Persona1.setPeso = 25.0;
  Persona1.setSexo = "F";

  Persona1.GenerarDNI();
  CalculoEdad(Persona1);
  MostrarPesoPersona(Persona1);
  print(Persona1);

  //Persona2

 Persona2.GenerarDNI();
 CalculoEdad(Persona2);
 MostrarPesoPersona(Persona2);
 print(Persona2);

 //Persona3

 Persona3.GenerarDNI();
 CalculoEdad(Persona3);
 MostrarPesoPersona(Persona3);
 print(Persona3);



}

void MostrarPesoPersona(Persona P){

  int IMC = P.calcularIMC();

  if(IMC == P.INFRAPESO){
    print("La persona se encuentra bajo su peso ideal");
  }else if(IMC == P.PESOIDEAL){
    print("La persona posee un peso ideal");
  }else{
    print("La persona posee Sobrepeso");
  }

}

void CalculoEdad(Persona P){

  bool edad = P.esMayordeEdad();

  switch(edad){
    case false:
      print("No es mayor de edad");
      break;
    case true:
      print("Es mayor de edad");
      break;

  }
}