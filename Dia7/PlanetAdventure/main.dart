import 'SalasFueraCastillo/HabitacionesExterior.dart';
import 'HabitacionesCastillo/HabiCastillos.dart';

import 'SalasFueraCastillo/StartRoom.dart';
import 'SalasFueraCastillo/Garden.dart';
import 'SalasFueraCastillo/SecretRoom.dart';
import 'dart:io';


void main(){

    var HabitacionExterior,HabitacionInterior;
    bool KeyInHand = true;

   
//Instancias  HabitacionesExterior

    List<ExteriorHabitaciones> ExteriorRooms = [
      new ExteriorHabitaciones("Salon Inicio", 1),
      new ExteriorHabitaciones("Jardin", 2),
      new ExteriorHabitaciones("Sala secreta", 3)
    ];

    var inicioRoom = new startRoom(ExteriorRooms[0].getNom, ExteriorRooms[0].getNumSala);
    var Garden = new jardin(ExteriorRooms[1].getNom,ExteriorRooms[1].getNumSala);
    var secret = new SecretRoom(ExteriorRooms[2].getNom, ExteriorRooms[2].getNumSala);
//Fin Instancias
//****************************************** */


//Instancias HabitacionesInterior
    List<HabitacionCastillo> CastleRooms = [
      new HabitacionCastillo("Armamento", 1,"Scottcito"),
      new HabitacionCastillo("Cocina", 2,"Rito"),
      new HabitacionCastillo("Cerveceria", 3, "Capo"),
      new HabitacionCastillo("Salon de baile", 4, "Goto")

    ];

    

//Fin Instancias

    //Mensaje Bienvenida
    print("Estas a punto de iniciar la aventura del Planeta Babosito\nConoceras algunos de los habitantes del planeta\ny a su lider Rito");
    print("Pulsa enter para continuar");
    stdin.readLineSync();

    print("Antes de comenzar\nestas en un castillo el cual el objetivo\nes encontrar la puerta que te llevará al planeta");
    print("Para ello necesitaras recorrer las habitaciones del castillo incluso el jardin");
    
    print("Pulsa enter para continuar");
    stdin.readLineSync();
    print(".\n.\n.\n.");

    print("Pulsa enter para continuar");
    stdin.readLineSync();
    //Mostrar los nombre de las habitaciones
    print("Nombre habitaciones en esta área");
    ExteriorRooms.forEach((namesRooms){
      print(namesRooms.getNom.toString().toUpperCase());
    });


    inicioRoom.MostrarSalida(); 
    inicioRoom.ShowName();

    print('A que habitacion quiere ir? \na)Jardin \nb)Castillo');
    HabitacionExterior = stdin.readLineSync().toLowerCase();

    //Habitaciones.add(SalonInicio);
    
    print(".\t.\t.");
    print(".\t.\t.");
    

    //El jardin

  while(HabitacionExterior != "exitBucle"){

   switch(HabitacionExterior){
     case "jardin":
          HabitacionExterior = "";
          Garden.ShowName();
          Garden.MostrarPresentacion();
          print("");
          Garden.MostrarSalida();
          print("");
          print("Ingrese el nombre de la sala donde se quiere dirigir");
          HabitacionExterior = stdin.readLineSync().toLowerCase();
          break;
      case "castillo":
          HabitacionInterior = "castillo";

          HabitacionExterior = "exitBucle";
          break;
      case "sala secreta":
          HabitacionExterior = "";
          if(KeyInHand){
            
            secret.ShowName();
            secret.NombreJefe();
            secret.MostrarSalida();
            print("Ingrese el nombre de la sala donde se quiere dirigir");
            HabitacionExterior = stdin.readLineSync().toLowerCase();
          }else{
            print("No puedes pasar sin la planta especial");
            secret.MostrarSalida();
            print("Ingrese el nombre de la sala donde se quiere dirigir");
            HabitacionExterior = stdin.readLineSync().toLowerCase();
            
          }
          break;
      case "inicio":
          inicioRoom.MostrarSalida(); 
          inicioRoom.ShowName();

          print("Ingrese el nombre de la sala donde se quiere dirigir");
          print('A que habitacion quiere ir? \na)Jardin \nb)Castillo');
          HabitacionExterior = stdin.readLineSync().toLowerCase();
          break;
      case "sala de armamento":
          HabitacionInterior = "armamento";

          HabitacionExterior = "exitBucle";
          break;
      default:
          break;
          
   }

   switch(HabitacionInterior){
     case "armamento":
          print("Armamento");
          break;
   }

  };
  print("Bucle terminado");

}