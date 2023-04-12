void main(List<String> args) {
  final persona = {'nombre': 'Fran', 'apellido': 'Aldado', 'edad': 41};
  final direccion = {'ciudad': 'Ottawa', 'pais': 'Canada'};

  print('Persona: $persona');
  print('Direccion: $direccion');

  print('Length: ${persona.length}'); // valor de los pares keys y values
  print('Keys: ${persona.keys}'); // valores de keys
  print('Values: ${persona.values}'); // valores de values

  ////?? fusionar keys y valores de dos maps en uno solo
  persona.addAll(direccion);
  print('addAll: ${persona}'); // valores de values

  ////?? metodo "remove", cuando se borra una key, tambien borrara su value
  persona.remove('pais');
  print('Remove Pais: ${persona}'); // removemos key pais

  ////?? "removeWhere", realizara un barrido en el map
  ////?? removera el valor o la key si cumple la condicion
  ////?? en este ejemplo estoy diciendo que si la llave es difererente a nombre entonces se borra
  //persona.removeWhere((key, value) => (key != 'nombre') ? true : false);

  //! comentamos la linea anterior para continuar con mas ejercicios

  // persona.removeWhere((key, value){
  // if (key != 'nombre') {
  //   return true; // si es diferente se borra
  // } else {
  //   return false; // si es igual se mantiene
  // }
  // });
  print('RemoveWhere: ${persona}'); // remuevo todo lo que no tenga key 'nombre'

  ////?? ahora vamos a ver otra vez el forEach, para entender que puede recorrer un mapa, pero no modificarlo
  ////?? para modificar un mapa utilizaremos el metodo MapEntry para crear una entrada de llave y valor (key, value)
  persona.forEach((key, value) {
    print('key: $key  value: $value');
  });

  // debe regresar un MapEntry
  // dentro del MapEntry, modifico el valor a toString() para poder hacer el toUpperCase()
  // debemos guardarlo en un nuevoMapa, ya que el map persona no puede ser modificado
  final nuevoMapa = persona
      .map((key, value) => MapEntry(key, value.toString().toUpperCase()));

  // a su vez aclarar que como hicimos el toString, nuevoMapa sera Map<String,String>
  // y el valor numerico de la edad se convertira a string
  print('Persona Map: $nuevoMapa');


}
