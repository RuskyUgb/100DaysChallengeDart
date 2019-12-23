import 'HabiCastillos.dart';
import '../SalasFueraCastillo/HabitacionesExterior.dart';

class Cerveceria extends HabitacionCastillo implements IMostrarSalidas{



  Cerveceria(String nomSala,int numSala, String nomJefe) : super(nomSala,numSala,nomJefe);

  void DarLlave(){
    print("YO EL GRAN CAPO, TE DOY ESTA PLANTA BABOLINA, QUE SE LA QUITE AL GRAN RITO POR BABOSA\n VETE PUES EN BUSCA DE LO QUE TANTO DESEAS Hip, Hip, Hip, Hip, Hip");
  }
  @override
  void MostrarSalida() {
    print("Esta sala posee una zona a explorar \nAl Oeste el pasillo");
  }
}