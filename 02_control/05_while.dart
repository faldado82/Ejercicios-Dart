import 'dart:io';

String continuar = 'y';
int contador = 0;

void main(List<String> args) {
  while (continuar == 'y') {
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.writeln('Desea continuar ?? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
  }
}
