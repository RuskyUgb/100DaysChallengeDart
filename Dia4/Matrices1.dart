void main() {
  var Filas = new List<int>();
  var Columnas = new List<int>();

  for (var i = 1; i <= 5; i++) {
    Filas.add(i);
    for (var j = 1; j <= 5; j++) {
      Columnas.add(j);
    }
  }

 

  print(new List<List<String>>.generate(
      Filas.length,
      (F) => List<String>.generate(Filas.length, (C) {
            var D = Columnas[C];
            return D.toString();
          })));

  /*  print(new List<int>.generate(4, (int index) {
                var m = index+1;
                return m;
              })
          );

    print(
      new List<List<int>>.generate(5, (i) => List<int>.generate(5, (j)=> i * 5 + j))
    );

    final size = 5;
      final grid = List<List<int>>.generate(
          size, (i) => List<int>.generate(size, (j) => i * size + j));
      print(grid);*/
}
