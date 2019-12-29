import 'dart:math';
import 'dart:core';

class Password{

  int longitudDefecto = 8;
  
  int Longitud;
  String Contrasenia;

  Password(){
   this.Longitud = longitudDefecto;
  }
  
  Password.MakePass(int Longitud){
    this.Longitud = Longitud;
  }


  bool esFuerte(){
    
    int esMayus=0;
    int esMinus = 0;
    
    for(var i=0; i<this.Contrasenia.length;i++){
      if(this.Contrasenia[i] == this.Contrasenia[i].toUpperCase()){
        
        esMayus++;
        
      }else if(this.Contrasenia[i] == this.Contrasenia[i].toLowerCase()){
        esMinus++;
      }
    }
    
    if(esMayus>2 && esMinus >1 && this.Contrasenia.length>5){
      return true;
    }else{
      
      return false;
    }
  }
  
  String generarPassword(){
    
    String passwordN = "";
    
    var letras = [
      "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","k","r","s","t","u",
      "v","w","x","y","z"
    ];
    var randomPass = new Random();

    for(var i=1;i<this.Longitud;i++){   

        var longitudPass = randomPass.nextInt(3) + 1;

        var letraAleatoria = randomPass.nextInt(this.Longitud);

        if(longitudPass ==  1){
          passwordN += letras[letraAleatoria].toUpperCase();
        }else if(longitudPass == 2){
          passwordN += letras[letraAleatoria];
        }else{
          var randomNum = randomPass.nextInt(20);
          passwordN += randomNum.toString();
        }

    }

    return passwordN;

  }


}