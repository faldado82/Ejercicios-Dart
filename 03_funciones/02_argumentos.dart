////?? Argumentos Posicionales, porque hay que respetar la posicion de los mismos para llamarlos
void saludar1(String mensaje, [String nombre = 'Fran', int edad = 41]) {
  // al tener un argumento opcional se utiliza [], en este caso nombre y edad.
  // a los cuales le debemos poner un valor por defecto
  // o dejar que el tipo de dato (String?, int?) acepte valores null para que sea aceptado.
  print('Saludar1: $mensaje $nombre $edad');
}

////?? Argumentos por Nombre, debemos encerrar los argumentos entre {}
////?? al poner required estamos diciendo que este requerimiento es obligatorio
////?? y al escribir el mensaje por fuera de los {}, estamos diciendo que tambien es obligatorio
////?? son dos maneras de decir lo mismo, pero es mas claro usar required
void saludar2(String mensaje, {required String nombre, int edad = 10}) {
  print('Saludar2: $mensaje $nombre $edad');
}

void main(List<String> args) {
  ////?? aca estamos respetando la posicion o el orden de argumentos para mostrarlos
  saludar1('Hola'); // Mostrara los valores por defecto, Fran  y 41
  saludar1('Hola', 'Isa', 36);
  // ! saludar(36, 'Hola', 'Isa'); Error, no se esta respetando el orden

  saludar2('Saludos',
      nombre: 'Roberto'); // edad no es requerido, y por defecto tiene un valor
  saludar2(nombre: 'Jose', 'mensaje', edad: 22);
  ////?? en este ultimo caso puedo escribir los valores de los argumentos desordenadamente, 
  ////?? los valores por nombre se adjudicaran de acuerdo a su nombre dado.
}
