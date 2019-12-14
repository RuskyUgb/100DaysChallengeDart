void main(){

  var Peliculas = {
    //Key   Values
    001:"Avengers End Game",
    002:"Pinocho",
    003:"Rapidos y furiosos 5"
  };


  //print(Peliculas[002]);

//Añadir un nuevo elemento indicando la key y el valor
  Peliculas[004] = "Avatar";

  //print(Peliculas[004]);

  Peliculas.forEach((k,v) => print(v));



}