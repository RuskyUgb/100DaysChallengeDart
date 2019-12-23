import 'HabiCastillos.dart';
import '../SalasFueraCastillo/HabitacionesExterior.dart';

class Cerveceria extends HabitacionCastillo implements IMostrarSalidas{



  Cerveceria(String nomSala,int numSala, String nomJefe) : super(nomSala,numSala,nomJefe);

  @override
  void MostrarSalida() {
    print("Esta sala posee una zona a explorar \nAl Oeste el pasillo");
  }
}