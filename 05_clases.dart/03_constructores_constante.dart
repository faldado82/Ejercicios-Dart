class Location {
  //! FINAL
  // final double latitud;
  // final double longitud;
  // Location(this.latitud, this.longitud);

  //! CONST
  // es creado en tiempo de compilacion del programa
  // en el momento que se ejecuta, ahi se define el espacio en memoria del mismo
  final double latitud;
  final double longitud;
  const Location(this.latitud, this.longitud); // es un constructor constante
}

void main(List<String> args) {

  // primero veamos un ejemplo de creacion de constructores con final
  // despues veremos el mismo ejemplo creado con const

  //! FINAL
  // final sanFrancisco1 = new Location(18.2323, 39.9000);
  // final sanFrancisco2 = new Location(18.2323, 39.9001);
  // final sanFrancisco3 = new Location(18.2323, 39.9001);

  // print(sanFrancisco1 == sanFrancisco2); // false

  // en teoria deberia dar TRUE porque son iguales, pero son dos instancias en memoria diferentes
  // porque incluso estan creados en dos puntos del tiempo diferentes, por eso da false
  //print(sanFrancisco2 == sanFrancisco3); // false

  //! CONST
  const sanFrancisco4 = const Location(18.2323, 39.9000);
  const sanFrancisco5 = const Location(18.2323, 39.9001);
  const sanFrancisco6 = const Location(18.2323, 39.9001);

  print(sanFrancisco4 == sanFrancisco5); // false
  print(sanFrancisco5 == sanFrancisco6); // true porque apuntan al mismo lugar de memoria
}
