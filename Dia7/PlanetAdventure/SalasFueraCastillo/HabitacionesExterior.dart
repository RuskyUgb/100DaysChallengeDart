
class ExteriorHabitaciones {

  String nombre;
  int numeroSala;

  ExteriorHabitaciones(String _nomSala, int _numSala){
    this.nombre = _nomSala;
    this.numeroSala = _numSala;
  }

  void ShowName(){
    print('Bienvenido Viajero, esta es la sala ${this.nombre} \n');
  }

  set setNombre(String nomH) => this.nombre = nomH;

  get getNom => this.nombre;

  set setNumSala(int numH) => this.numeroSala = numH;

  get getNumSala => this.numeroSala;


}

abstract class IMostrarSalidas{

  void MostrarSalida();

}