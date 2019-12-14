void main(){
  
  var capitales = ["Madrid","Roma","San Salvador","Brazilia"];
  var nombres =  ["Lola","Lelo","John Wick"];
  
  //El foreach necesita un parametro de tipo FUNCTION, es decir puede ser una funcion cualquiera o una      anonima, como es el siguiente caso
  
  //Foreach aplica lo indicado en el codigo a todos los elementos en la LIST
  
  capitales.forEach(
    (item){
      print("Capital conocida $item");
    }
  );
  
  //Llamar a la funcion
  nombres.forEach(pruebaFuncion());
  
  
}

//Funcion que contiene una funcion anonima

void ff; pruebaFuncion(){
  
  //Funcion Anonima
  return (item){
    print(item);
  };
}