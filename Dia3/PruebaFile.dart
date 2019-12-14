import 'dart:io';
void main(){
    
    var NombreArchivo = "Prueba1.txt";
    new File(NombreArchivo).writeAsString("Hola Dart");
    new File(NombreArchivo).readAsString().then((String contents) {
    print(contents);
  });

}