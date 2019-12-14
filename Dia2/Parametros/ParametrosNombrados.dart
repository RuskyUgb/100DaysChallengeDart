void main(){
  
  
  pruebaParametrosNombrados("Luis","Caballero",Direccion:"El Salvador");
  //Solo envia dos parametros y el nombrado queda en NULL
  pruebaParametrosNombrados("Luis","Caballero");
  

}


//Funcion con parametros Nombrados van en LLAVES

void pruebaParametrosNombrados(String nombre,String Apellido,{String Direccion}){
  
  //El parametro nombrado en este caso es Direccion
  
  print("Su nombre: " + nombre);
  print("Su apellido: " + Apellido);
  
  if(Direccion != null){
    print("Su direccion: " + Direccion);
  }else{
    print("Indique un pais");
  }
  
  
}