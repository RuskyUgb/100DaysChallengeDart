import 'dart:convert' show json, jsonDecode;
import 'dart:io';

void main(){

  /*var jsonDatos = {"nombre":"luis","apellido":"caballero"};

  
  var toJson = jsonEncode(jsonDatos);

  print(toJson);

  var decodeJ = jsonDecode(toJson);
  Map datosUsuario = decodeJ;
  print(datosUsuario);
  
  jsonDatos['edad'] = "22";

  print(jsonDatos);
  
*/
ReadJson();

}

void ReadJson() async{

  Map<String,dynamic> archivoExterno = jsonDecode(await File("jsonFile/nombres.json").readAsString());

  var jsonData = '{ "name" : "Dane", "alias" : "FilledStacks"  }';

  Map<String,dynamic> d = json.decode(jsonData); //Convierte a JSON
  var e = json.encode(d); //Permite convertir un JSON a STRING
  //print(d['name']);
  //print(archivoExterno);

  
  archivoExterno.forEach(
    (key,value){

      for(var datosP in value){
        print(datosP["nombre"] + " " + datosP["apellido"]);
      }
      
      
    }
  );
  //print(archivoExterno["personas"][0]['nombre']);
}