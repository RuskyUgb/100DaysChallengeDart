import 'HabitacionesCastillo/Armamento.dart';
import 'HabitacionesCastillo/BaileRoom.dart';
import 'HabitacionesCastillo/Cerveceria.dart';
import 'HabitacionesCastillo/Cocina.dart';
import 'HabitacionesCastillo/Pasillo.dart';
import 'SalasFueraCastillo/HabitacionesExterior.dart';
import 'HabitacionesCastillo/HabiCastillos.dart';

import 'SalasFueraCastillo/StartRoom.dart';
import 'SalasFueraCastillo/Garden.dart';
import 'SalasFueraCastillo/SecretRoom.dart';
import 'dart:io';

void main() {
  var HabitacionEleccion;
  bool plantInHand = false;
  int numHabitacionExterior;
//Instancias  HabitacionesExterior

  List<ExteriorHabitaciones> ExteriorRooms = [
    new ExteriorHabitaciones("Salon Inicio", 1),
    new ExteriorHabitaciones("Jardin", 2),
    new ExteriorHabitaciones("Sala secreta", 3)
  ];

  var inicioRoom =
      new startRoom(ExteriorRooms[0].getNom, ExteriorRooms[0].getNumSala);
  var Garden = new jardin(ExteriorRooms[1].getNom, ExteriorRooms[1].getNumSala);
  var secret =
      new SecretRoom(ExteriorRooms[2].getNom, ExteriorRooms[2].getNumSala);
//Fin Instancias
//****************************************** */

//Instancias HabitacionesInterior
  List<HabitacionCastillo> CastleRooms = [
    new HabitacionCastillo("Armamento", 1, "Scottcito"),
    new HabitacionCastillo("Cocina", 2, "Rito"),
    new HabitacionCastillo("Cerveceria", 3, "Capo"),
    new HabitacionCastillo("Salon de baile", 4, "Goto")
  ];

  var PasilloCastle = new Pasillo();

  var ArmamentoCastle = new Armamento(CastleRooms[0].getnombre,
      CastleRooms[0].getNumSala, CastleRooms[0].getJefe);
  var CocinaCastle = new Cocina(CastleRooms[1].getnombre,
      CastleRooms[1].getNumSala, CastleRooms[1].getJefe);
  var CerveceriaCastle = new Cerveceria(CastleRooms[2].getnombre,
      CastleRooms[2].getNumSala, CastleRooms[2].getJefe);
  var BaileCastle = new BaileRoom(CastleRooms[3].getnombre,
      CastleRooms[3].getNumSala, CastleRooms[3].getJefe);

//Fin Instancias

  //Mensaje Bienvenida
  print(
      "Estas a punto de iniciar la aventura del Planeta Babosito\nConoceras algunos de los habitantes del planeta\ny a su lider Rito");
  print("Pulsa enter para continuar");
  stdin.readLineSync();

  print(
      "Antes de comenzar\nestas en un castillo el cual el objetivo\nes encontrar la puerta que te llevará al planeta");
  print(
      "Para ello necesitaras recorrer las habitaciones del castillo incluso el jardin");

  print("Pulsa enter para continuar");
  stdin.readLineSync();
  print(".\n.\n.\n.");

  print("Pulsa enter para continuar");
  stdin.readLineSync();
  //Mostrar los nombre de las habitaciones
  print("Nombre habitaciones en esta área");
  ExteriorRooms.forEach((namesRooms) {
    print(namesRooms.getNom.toString().toUpperCase());
  });

  inicioRoom.MostrarSalida();
  inicioRoom.ShowName();

  print('A que habitacion quiere ir? \na)Jardin \nb)Pasillo');
  numHabitacionExterior = 1;
  HabitacionEleccion = stdin.readLineSync().toLowerCase();

  //Habitaciones.add(SalonInicio);

  print(".\t.\t.");
  print(".\t.\t.");

  //El jardin

  while (HabitacionEleccion != "exitBucle") {
    switch (HabitacionEleccion) {
      case "jardin":
        numHabitacionExterior = 2;
        Garden.ShowName();
        Garden.MostrarPresentacion();
        print("");
        Garden.MostrarSalida();
        print("");
        print("Ingrese el nombre de la sala donde se quiere dirigir");
        HabitacionEleccion = stdin.readLineSync().toLowerCase();
        break;
      case "pasillo":
        numHabitacionExterior=0;//Set para que  me deje entrar al pasillo
        PasilloCastle.MensajeBienvenida();
        PasilloCastle.MostrarSalasAdjuntas();
        print("Ingrese el nombre de la sala donde se quiere dirigir");
        HabitacionEleccion = stdin.readLineSync().toLowerCase();
        break;
      case "sala secreta":
        HabitacionEleccion = "";
        numHabitacionExterior = 3;
        if (plantInHand) {
          secret.ShowName();
          secret.NombreJefe();
          secret.MostrarSalida();
          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
        } else {
          print("No puedes pasar sin la planta especial");
          secret.MostrarSalida();
          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
        }
        break;
      case "inicio":
        HabitacionEleccion = "";
        numHabitacionExterior = 1;
        inicioRoom.MostrarSalida();
        inicioRoom.ShowName();

        print("Ingrese el nombre de la sala donde se quiere dirigir");
        print('A que habitacion quiere ir? \na)Jardin \nb)Pasillo');
        HabitacionEleccion = stdin.readLineSync().toLowerCase();
        break;
      case "sala de armamento":
        if (numHabitacionExterior == 1 || numHabitacionExterior == 3) {
          print("No puedes saltar a otra habitacion");
          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
        } else if (numHabitacionExterior == 2) {
          HabitacionEleccion = "";
          numHabitacionExterior == 0;
          ArmamentoCastle.ShowNameRoom();
          ArmamentoCastle.MostrarSaludoJefe();
          ArmamentoCastle.MostrarSalida();

          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
        }

        break;
      case "cocina":
        if (numHabitacionExterior == 1 ||
            numHabitacionExterior == 2 ||
            numHabitacionExterior == 3) {
          print("No puedes saltar a otra habitacion");
          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
        } else {
          CocinaCastle.ShowNameRoom();
          CocinaCastle.MostrarSaludoJefe();
          CocinaCastle.MostrarSalida();

          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
        }
        break;
      case "cerveceria":
        if(numHabitacionExterior == 1 ||
          numHabitacionExterior == 2 ||
          numHabitacionExterior == 3){

          print("No puedes saltar a otra habitacion");
          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
        }else{
          CerveceriaCastle.ShowNameRoom();
          CerveceriaCastle.MostrarSaludoJefe();
          CerveceriaCastle.DarLlave();
          plantInHand = true;
          CerveceriaCastle.MostrarSalida();
          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
        }
        
        break;
      case "salon de baile": 
      if(numHabitacionExterior == 1 ||
          numHabitacionExterior == 2 ||
          numHabitacionExterior == 3){

          print("No puedes saltar a otra habitacion");
          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionEleccion = stdin.readLineSync().toLowerCase();
      }else{
        BaileCastle.ShowNameRoom();
        BaileCastle.MostrarSaludoJefe();
        BaileCastle.MostrarSalida();
        print("Ingrese el nombre de la sala donde se quiere dirigir");
        HabitacionEleccion = stdin.readLineSync().toLowerCase();
      }
        break;
      default:
        HabitacionEleccion = HabitacionCastillo;
        break;
    }
  }
  ;

  print("Bucle terminado");
}
