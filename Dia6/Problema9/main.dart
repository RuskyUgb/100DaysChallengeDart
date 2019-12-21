import 'Estudiante.dart';

void main(){

  var Estudiantes = 35;
  var cantHombres = new Hombre(Estudiantes, 15);
  var cantMujeres = new Mujer(Estudiantes, 20);

  cantHombres.Calculo();
  cantMujeres.Calculo();

  cantHombres.MostrarPorcentaje();
  cantMujeres.MostrarPorcentaje();

}