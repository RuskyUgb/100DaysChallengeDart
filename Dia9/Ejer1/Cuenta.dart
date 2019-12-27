class Cuenta{
  String Titular;
  double Cantidad;

  Cuenta(String Titular,double Cant){
    
    this.Titular = Titular;

    if(Cant <= 0){
      this.Cantidad = 0.0;
    }else{
      this.Cantidad = Cant;
    }
  }

  Cuenta.opcional(String Titular) : this(Titular,0.0);

  set setTitular(String Titu){
    this.Titular = Titu;
  }

  get getTitular{
    return this.Titular;
  }

  set setCantidad(double cant){
    this.Cantidad = cant;
  }

  get getCantidad{
    return this.Cantidad;
  }

  @override
  String toString() {
    
    return "El titular es ${this.Titular} y tiene ${this.Cantidad} dolares en la cuenta";
  }

  void ingresar(double NuevaCantidad){

    if(NuevaCantidad > 0){
      this.Cantidad += NuevaCantidad;
      
    }
    
  }

  void retirar(double CantidadRetiro){
    if( (this.Cantidad - CantidadRetiro) < 0){
      this.Cantidad = 0;
    }else{
      this.Cantidad-=CantidadRetiro;
    }
  }


  
}