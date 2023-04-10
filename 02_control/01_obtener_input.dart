import 'dart:io';

main() {
  // imprimir en la terminal o cmd
  stdout.writeln('Cual es tu nombre ??');

  // leer informacion del usuario
  String? nombre = stdin.readLineSync()!;

  stdout.writeln('Tu nombre es: $nombre');

  
}
