void main(List<String> args) {
  int a = 10, b = 20;
  int resultado1 = sumarFlecha(a, b);
  int resultado2 = sumar(a, b);

  print(resultado1);
  print(resultado2);

  List<int> listado = [1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 9, 99, 10, 1];
  var nuevoListado1 = listado.where((numero){
    return numero > 5;
  });
  var nuevoListado2 = listado.where((n) => n > 5); // where(condicion) el numero debe ser mayor a 5

  // convierto a set para que no haya repetidos y transformo otra vez para tener una lista.
  print(nuevoListado1.toSet().toList());

  // lista de funcion de flecha.
  print(nuevoListado2); 
}

int sumar(int x, int y) {
  return x + y;
}

int sumarFlecha(int x, int y) => x + y;
