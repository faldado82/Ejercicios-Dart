import 'dart:io';

main() {
  /*
  stdout.writeln('Cual es tu edad ?');
  int edad = int.parse(stdin.readLineSync()!);

  ////??si es null lo que retorna stdin.readLineSync() se le asigna '0'
  ////??int numero = int.parse(stdin.readLineSync() ?? '0');

  if (edad == '') {
    stdout.writeln('no has escrito tu edad');
  } else if (edad >= 18) {
    stdout.writeln('Eres mayor de edad');
  } else {
    stdout.writeln('Eres menor de edad');
  }
  */

  stdout.writeln('Bienvenido al sistema...');
  stdout.writeln('Por favor, ingrese su edad.');
  int edad = int.parse(stdin.readLineSync()!);

  if (edad >= 21 && edad <=60){
    stdout.writeln('Eres un ciudadano.');
  } else if (edad >=18 && edad <= 20){
    stdout.writeln('Eres mayor de edad.');
  } else if (edad >=0 && edad <=17){
    stdout.writeln('Eres menor de edad.');
  } else if (edad > 60){
    stdout.writeln('Eres muy viejo.');
  }


}


