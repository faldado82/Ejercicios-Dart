import 'dart:io';

main() {
  print('Bienvenido al sistema....');
  print('Escriba un numero para realizar la tabla de multiplicar');

  int numero = int.parse(stdin.readLineSync()!);
  print('Selecciono tabla del numero $numero');

  for (int i = 1; i <= 10; i++) {
    print('$numero * $i = ${numero * i}');
  }
}
