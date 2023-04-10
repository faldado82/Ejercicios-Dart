class Persona {
  // campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Soy una propiedad Privada';

  /*
  ////?? propiedad privada se declara con un guion bajo antes del nombre de variable
  String? _nombre;
  int? _edad;
  String? _bio;
  */

  // Get y Set
  String get bio {
    return _bio.toUpperCase();
  }
 
  // un set siempre es void (implicito), no regresa nada porque estamos seteando un valor
  // puedo llamarlo bio igual al get, que dart reconoce el bio del get y el bio del set
  set bio(String texto){
    _bio = texto;
  }

  ////?? GET y SET escritos con flecha
  // String get bio => _bio.toUpperCase(); ////?? otra forma de escribir el GET
  // set bio(String texto) =>_bio = texto; ////?? otra forma de escribir el SET


  // constructores
  // metodos
  @override
  String toString() => '$nombre $edad $_bio';
}
