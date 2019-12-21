class Especialidad {
  String NombreE;
  double Presupuesto;
  double PresupuestoAnual;

  Especialidad(String NombreE,double PresupuestoAnualA){
    this.NombreE = NombreE;
    this.PresupuestoAnual = PresupuestoAnualA;
    
  }

  set setPresupuestoAnual(double PresupuestoA){
    this.PresupuestoAnual = PresupuestoA;
  }

  get getPresupuestoAnual{
    return this.PresupuestoAnual;
  }

  void showPresupuesto(){
    print("El presupuesto para  ${NombreE}, es de : ${this.Presupuesto}");
  }
}