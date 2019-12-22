import 'HabitacionesExterior.dart';


class SecretRoom extends ExteriorHabitaciones implements IMostrarSalidas{

  SecretRoom(String nomSala, int numSala) : super(nomSala, numSala);

  void NombreJefe(){
    print("Bienvenido viajero, soy PASTOR, el guardiante fiel de Rito\nYa que has logrado entrar toma la llave\n con ella pasaras la puerta al planeta, buen viaje");
  }

  @override
  void MostrarSalida() {
    print('Posees esta zona a explorar \nal Este, el Jardin');
  }


}