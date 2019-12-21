import 'HabitacionesExterior.dart';

class jardin extends ExteriorHabitaciones implements IMostrarSalidas{

  jardin(String nom, int numSala) : super(nom,numSala);

  @override
  void MostrarSalida() {
    print('Posees dos zonas a explorar \nal Oeste, sala secreta,\nal sur, sala de inicio,\n en el Este la sal de Armamento');
  }

  
}