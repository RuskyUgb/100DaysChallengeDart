
import 'HabitacionesExterior.dart';

class startRoom extends ExteriorHabitaciones implements IMostrarSalidas{

 
  startRoom(String nom, int salanum) : super(nom, salanum);

  @override
  void MostrarSalida() {
    
    print('Posees dos zonas a explorar \nal Oeste, el Jardin,\nal norte, El Castillo');
  }

  
  
}