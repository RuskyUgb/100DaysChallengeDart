import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main(){
    
    var NombreArchivo = "Prueba1.txt";
    var file = new File(NombreArchivo);
    //new File(NombreArchivo).writeAsString("Hola Dart tílde");
    //Es decir el then solicita una funcion, que aplique algo al documento
    //Funcion anonima o cualquiera que tenga un parametro tipo String
    new File(NombreArchivo).readAsString().then(mostrarTexto);

    Stream<List<int>> inputStream = file.openRead();
    inputStream
      .transform(utf8.decoder)
      .transform(new LineSplitter())
      .listen(LecturaStream);
}

void mostrarTexto(String texto){
  print("$texto : ${texto.length}");
}

void LecturaStream(String line){
  print('$line: ${line.length} bytes');
}