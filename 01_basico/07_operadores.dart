main() {
  /*
  ////?? OPERADOR DE ASIGNACION
  int a = 1; // = asigno el valor 1 a la variable 'a'
  int? b;
  b ??= 20; // si b es null asigno el valor 20 a 'b'
  print(b);
  */

  /*
  ////?? OPERADOR TERNARTIO
  int x = 23;
  String respuesta = x > 25 ? 'C es mayor a 25' : 'C es menor a 25';
  print(respuesta);
  */

  /*
  ////?? OPERADOR CONDICIONAL
  int? c; // c puede ser nulo
  int? d; // d puede ser nulo
  int? e = c ?? d ?? 100;
  ////?? La condición es que si 'c' es nulo use el valor de 'd'
  ////?? y si 'd' es nulo use como valor 100 para asignárselo a 'e'
  print(e);
  */

  /*
  ////?? OPERADORES RELACIONALES
  ////?? Todos retornan valores booleanos
    a > b ---- a mayor que b
    a < c ---- a menor que c
    a >= d ---- a mayor o igual que d
    a <= e ---- a menor o igual que e
    == Revisa si dos objetos tiene el mismo valor
  \ != Revisa si dos objetos tienen valores diferentes

  String persona1 = 'fran';
  String persona2 = 'isabela';
  bool resultado = persona1 == persona2; // false
  print('las personas son iguales ??: $resultado');

  int z = 20;
  int y = 30;
  print(z > y);
  print(z < y);
  print(z >= y);
  print(z <= y);
  */

  ////?? OPERADOR DE TIPO

  int k = 10;
  String l = '10';

  print(k is int); // true
  print(l is int); // false
  print(l is! int); // true, porque estoy negando el is
}
