import 'dart:math';

abstract class Estudiante{

  var Estudiantes;

  Estudiante(int CantEstudiantes){
    this.Estudiantes = CantEstudiantes;
  }

 void Calculo();

}

abstract class IPorcentaje{

  void MostrarPorcentaje();
}

class Hombre extends Estudiante implements IPorcentaje{

  var HombrePorcentaje;
  var CantHombres;
  Hombre(int CantStudents, this.CantHombres) :super(CantStudents);

  @override 
  void Calculo() {
    HombrePorcentaje =  (this.CantHombres * 100) / this.Estudiantes;
    
  }

  @override
  void MostrarPorcentaje(){
    print("Cantidad de porcentaje de hombres %: " + this.HombrePorcentaje.toString());
  }
  
}

class Mujer extends Estudiante implements IPorcentaje{

  var MujerPorcentaje;
  var CantMujeres;
  Mujer(int CantStudents,this.CantMujeres) :super(CantStudents);

  @override 
  void Calculo() {

    MujerPorcentaje =  (this.CantMujeres * 100) / this.Estudiantes;
    
  }

  @override
  void MostrarPorcentaje(){
      print("Cantidad de porcentaje de mujeres %: " + this.MujerPorcentaje.toString());
  }


}