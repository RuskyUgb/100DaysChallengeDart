import 'HabiCastillos.dart';
import '../SalasFueraCastillo/HabitacionesExterior.dart';

class Armamento extends HabitacionCastillo implements IMostrarSalidas{



  Armamento(String nomSala,int numSala, String nomJefe) : super(nomSala,numSala,nomJefe);

  @override
  void MostrarSalida() {
    print("Esta sala posee dos zonas a explorar \nAl Oeste el Jardin\nAl Este el pasillo");
  }
}