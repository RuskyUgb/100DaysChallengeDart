import 'HabiCastillos.dart';
import '../SalasFueraCastillo/HabitacionesExterior.dart';

class Cocina extends HabitacionCastillo implements IMostrarSalidas{

  Cocina(String nomSala,int numSala, String nomJefe) : super(nomSala,numSala,nomJefe);

  @override
  void MostrarSalida() {
    print("Esta sala posee una zona a explorar \nAl Este el pasillo");
  }
}