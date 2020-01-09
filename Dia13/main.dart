
void main() {
  
  print("Inicio");
  
  Future<String> ejemploF = Future(() {
    return "Hola future";
  });
  
  
  //Para acceder luego de que el resultado de completo lo hago con then
  
  var respuestaFuture = ejemploF.then((info){
    print(info);
    print("esperando el future 2");
  });
  
  
  //**************//
  
  Future<String> data2Funcion = ejemplo2();
  
  data2Funcion.then((info){
    print("informacion 1 ${info}");
    var nombre = info;
    nombre = "YO SOY ${info}";
    
    return nombre;
  }).then((info2){
    print("esto viene del future anterior ${info2}");
  });
  
  print("Fin");
}



Future<String> ejemplo2(){
  
  return Future.delayed(
    Duration(seconds: 3),
    () => "Luis"
  );
}