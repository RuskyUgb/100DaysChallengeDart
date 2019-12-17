import 'ClassNotas.dart';

void main(){ 

  var nuevasNotas = new Notas("Luis", "Ing Sistemas", "II", 8.5, 7.5, 10, 8.0, 7.5);

  print("Notas del alumno ${nuevasNotas.Nombre} \nde la carrera ${nuevasNotas.Carrera}");
  print("Promedio de notas " + nuevasNotas.generarCalificacionParciales().toString());
  print("Nota examen final: " + nuevasNotas.examenFinal().toString());
  print("Nota de trabajo final:" + nuevasNotas.calificacionTrabajoFinal().toString());

}