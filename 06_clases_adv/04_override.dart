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

  ////?? es buena practica usar el decorador @override
  ////?? ya que este metodo sobre-escribe el metodo de mismo nombre que tiene el padre
  ////?? al ejecutarlo primara la sobre-escritura del hijo por encima del metodo del padre.
  @override
  void imprimirNombre() {
    print('Cliente: $nombre, ($edad)');

    ////?? Pero que pasa si queremos llamar al metodo del padre ??
    ////?? para llamar al metodo de mismo nombre del padre deberiamos escribirlo de esta manera
    super.imprimirNombre();
  }
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
