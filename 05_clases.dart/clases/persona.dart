class Persona {
  //! CAMPOS o PROPIEDADES
  String? nombre;
  int? edad;
  String _bio = 'Soy una propiedad Privada';

  /*
  ////?? propiedad privada se declara con un guion bajo antes del nombre de variable
  String? _nombre;
  int? _edad;
  String? _bio;
  */

  //! GETTERS y SETTERS
  String get bio {
    return _bio.toUpperCase();
  }

  // un set siempre es void (implicito), no regresa nada porque estamos seteando un valor
  // puedo llamarlo bio igual al get, que dart reconoce el bio del get y el bio del set
  set bio(String texto) {
    _bio = texto;
  }

  ////?? GET y SET escritos con flecha
  // String get bio => _bio.toUpperCase(); ////?? otra forma de escribir el GET
  // set bio(String texto) =>_bio = texto; ////?? otra forma de escribir el SET

  //! CONSTRUCTORES
  ////?? Es un metodo que se llama en el momento en que se crea una nueva instancia de esta clase
  /*
  Persona(int edad, String nombre) {
    this.edad =
        edad; // la propiedad this.edad toma el valor del argumento edad.
    this.nombre =
        nombre; // la propiedad this.nombre toma el valor del argumento nombre.
    print('soy el constructor');
  }
  */
  // se puede simplificar lo anterior de esta manera
  Persona({required this.edad, this.nombre});

  // se podrian poner el argumento posicional obligatorio y despues el opcional con las {}
  // Persona(this.edad, { this.nombre });
  // de esta manera deberia aclararlo en el archivo clase y pasar nombre: 'Fran' >>> ver archivo
  // sino se veria el error del mismo porque estaria faltando nombrar la propiedad nombre:

  //! CONSTRUCTOR CON NOMBRE

  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  Persona.persona40(this.edad, { this.nombre = 'Maria' } );

  //! METODOS
  @override
  String toString() => '$nombre $edad $_bio';
}
