import 'ClassAlumno.dart';

abstract class ICalificacionFinal{
  double generarCalificacionParciales();
  double calificacionTrabajoFinal();
  double examenFinal();
}


class Notas extends Alumno implements ICalificacionFinal{ 

  double NotasParciales,N1,N2,N3;

  double PromedioCalificaciones;
  double ExamenFinal;
  double TrabajoFinal;

  double CalificacionFinal;


  Notas(String Nom,String Carrera,String Semestre,this.N1,this.N2,this.N3,this.ExamenFinal,this.TrabajoFinal) : super(Nom,Carrera,Semestre);

  @override
  double generarCalificacionParciales() {
    NotasParciales = N1 + N2 + N3 / 3;
    PromedioCalificaciones = NotasParciales * 0.55;

    return PromedioCalificaciones;

  }

  @override
  double calificacionTrabajoFinal(){
      return this.TrabajoFinal * 0.16;
  }

  @override
  double examenFinal(){
    return this.ExamenFinal * 0.30;
  }


  double calificacionFinalObtenida(){
    return this.PromedioCalificaciones + this.TrabajoFinal + this.ExamenFinal;
  }
}