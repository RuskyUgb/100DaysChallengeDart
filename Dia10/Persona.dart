import 'dart:math';
import 'dart:core';

class Persona{

  String nombre;
  int edad;
  String sexo;
  String dUI;


  double peso,altura;


  //Constantes ----->    

   final INFRAPESO = -1;
   final PESOIDEAL = 0;
   final SOBREPESO = 1;


  //Constructor
  Persona(String nombre,int edad,String sexo,double peso,double altura){
    this.nombre = nombre;
    this.edad = edad;
    this.sexo = sexo;

    this.peso = peso;
    this.altura = altura;
  }

  //Constructor 2
  Persona.Opcion2(String nombre,int edad,String sexo) : this(nombre,edad,sexo,0.0,0.0);
 

  
  //Constructor 3
  Persona.Opcion3([defaultSex = "H"]) : this("",0,defaultSex,0.0,0.0);


  //Metodos  (peso en kg/(altura^2  en m)

  int calcularIMC(){
    double formula = (this.peso)/(pow(this.altura, 2));
    if(formula < 20){
      return INFRAPESO;
    }else if(formula >= 20 && formula <=25){
      return PESOIDEAL;
    }else{
      return SOBREPESO;
    }
  }

  bool esMayordeEdad(){
    if(this.edad >= 18){
      return true;
    }else{
      return false;
    }
  }

  void comprobarSexo(String sexo){
    if(sexo != "F"){
      this.sexo = "H";
    }
  }

  toString(){
    return "Datos de la persona ${this.nombre}\nedad:${this.edad}\nsexo;${this.sexo}\naltura:${this.altura}\npeso:${this.peso}\nDui:${this.dUI}";
  }
  
  void GenerarDNI(){
     
  
    var R = new Random();
      
    int randN = (100000000 - 10000000);
    int numDNI = R.nextInt(randN)  + 10000000;
    int res = R.nextInt(12);
    
    String leetrilla = letra(res.toInt());
      
    this.dUI = numDNI.toString() + "-" + leetrilla;
   
  }

  String letra(int indice){
  
   List letrasABC = [
     "X","W","Z","Y","A","B","V","C","J","K","O","P"
     ];
  
  return letrasABC[indice];
  
  
}


//Metodos set y get

  void set setN(String nom) {
    this.nombre = nom;
  }

    get getNom => this.nombre;

    set setEdad(int Ed) => this.edad = Ed;
    get getEdad => this.edad;

    set setPeso(double Peso) => this.peso = Peso;
    get getPeso => this.peso;

    set setAltura(double Al) => this.altura = Al;
    get getAltura => this.altura;

    set setSexo(String S) => this.sexo = S;
    get getSexo => this.sexo;
  }






