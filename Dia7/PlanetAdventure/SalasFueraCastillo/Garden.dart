import 'HabitacionesExterior.dart';

class jardin extends ExteriorHabitaciones implements IMostrarSalidas{

  jardin(String nom, int numSala) : super(nom,numSala);

  void MostrarPresentacion(){

    print("Un jardin creado por las propias manos de los babositos\n,se dice que la planta Bobolina, puede quitar cualquier cerradura");
  }
  @override
  void MostrarSalida() {
    print('Posees tres zonas a explorar \nal Oeste, sala secreta,\nal sur, sala de inicio,\nen el Este la sala de Armamento');
  }

  
}