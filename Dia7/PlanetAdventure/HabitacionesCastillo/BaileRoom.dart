import 'HabiCastillos.dart';
import '../SalasFueraCastillo/HabitacionesExterior.dart';

class BaileRoom extends HabitacionCastillo implements IMostrarSalidas{



  BaileRoom(String nomSala,int numSala, String nomJefe) : super(nomSala,numSala,nomJefe);

  @override
  void MostrarSalida() {
    print("Esta sala posee dos zonas a explorar \nAl Oeste el Jardin\nAl Este el pasillo");
  }
}