import 'dart:io';

void main(List<String> args) {
  File file = new File(
      Directory.current.path + '/04_tipos_no_comunes/assets/personas.txt');

  Future<String> f = file.readAsString();

  // f.then((data) => print(data));
  f.then(print); // es lo mismo a lo de arriba pero mas corto

  print('Fin del main');
}
