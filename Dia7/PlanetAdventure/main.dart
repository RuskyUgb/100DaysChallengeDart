import 'SalasFueraCastillo/HabitacionesExterior.dart';
import 'SalasFueraCastillo/StartRoom.dart';

import 'dart:io';


void main(){

    
//Instancias    

    List<ExteriorHabitaciones> ExteriorRooms = [
      new ExteriorHabitaciones("Salon Inicio", 1),
      new ExteriorHabitaciones("Jardin", 2)
    ];

    var inicioRoom = new startRoom(ExteriorRooms[0].getNom, ExteriorRooms[0].getNumSala);

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
    print("Pulsa enter para continuar");
    stdin.readLineSync();
    //Habitaciones.add(SalonInicio);
    ExteriorRooms[0].ShowName();
    print(".\t.\t.");
    print(".\t.\t.");
    inicioRoom.MostrarSalida();

    //El jardin
   

}