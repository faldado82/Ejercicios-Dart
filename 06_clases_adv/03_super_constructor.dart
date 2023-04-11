class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List? ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual,
            edadActual); // heredamos las propiedades de la clase padre asi como sus metodos

  void imprimirDireccion() => print('Direccion: $direccion');
}

void main(List<String> args) {
  final yo = new Persona('Fran', 41);
  final yoCliente = new Cliente(41, 'Fran');

  yoCliente.direccion = 'Calle 1234';

  yo.imprimirNombre();
  // yo.imprimirDireccion(); //! ERROR no se puede acceder desde el padre al metodo del hijo

  yoCliente.imprimirNombre();
  yoCliente.imprimirDireccion();
}
