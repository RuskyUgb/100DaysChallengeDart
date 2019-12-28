class Persona{

  String nombre;
  int edad;
  String sexo;
  String dUI;

  double peso,altura;

  Persona(){
    this.nombre = "";
    this.edad = 0;
    this.sexo = "H";

    this.peso = 0.0;
    this.altura = 0.0;
  }

  Persona.Opcion2(String nombre,int edad,String sexo){

    this.nombre = nombre;
    this.edad = edad;
    this.sexo = sexo;

    this.peso = 0.0;
    this.altura = 0.0;

  }

  

  Persona.Opcion3(String nombre,int edad,String sexo,String dui,double peso,double altura){
    this.nombre = nombre;
    this.edad = edad;
    this.sexo = sexo;
    this.dUI = dui;
    this.peso = 0.0;
    this.altura = 0.0;
  }


}