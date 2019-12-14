void main(){
  parametrosOpcionales("Luis","Caballero");
}

//Todos los parametros opcionales van dentro de []
// es importante validar que accion tomar en caso de != null
//Parametro opcional Edad
void parametrosOpcionales(String nombre,String Apellido, [int Edad]){
  
    print("Su nombre: " + nombre);
    print("Su apellido: " + Apellido);
  
    if(Edad != null){
      if(Edad >= 18){
        print("Es mayor de edad");
      }else{
        print("Es menor de edad");
      }
    }else{
      print("Edad no establecida");
    }
  
}