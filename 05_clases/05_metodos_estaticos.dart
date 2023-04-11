class Herramientas {
  static const List<String> listado = [
    'Martillo',
    'Llave inglesa',
    'Destornillador'
  ];

  static void imprimirListado() => listado.forEach(print);

  // un metodo estatico es un metodo que puedo llamar sin la necesidad de instanciar una clase
  //
}

void main(List<String> args) {
  // al ser static y const no podria agregar nuevas herramientas al listado
  // Herramientas.listado.add('Pinzas'); //!ERROR

  Herramientas.imprimirListado();
}
