import 'Password.dart';

void main(){

  var PassN = new Password();

  print(PassN.generarPassword());
  PassN.Contrasenia = PassN.generarPassword();

  if(PassN.esFuerte()){
    print("Su contraseña es bien vergona");
  }else{
    print("Noombe ay Diojcuarde");
  }
}