
class HabitacionCastillo{


  String _nombre;
  int _numeroSala;
  String _jefe;

  HabitacionCastillo(this._nombre,this._numeroSala,this._jefe);

  void MostrarSaludoJefe(){
    print("HOLA VIAJERO YO SOY ${this._jefe}, EL GRAN GUARDIAN DE ESTA SALA");
  }

  void ShowNameRoom(){
    print("Viajero, te encuentras en el castillo, en la sala ${this._nombre}");
  }

  set setnombre(String nombre){
    this._nombre = nombre;
  }

  get getnombre{
    return this._nombre;
  }

  set setJefe(String jefeNom) => this._jefe = jefeNom;

  get getJefe => this._jefe;

}