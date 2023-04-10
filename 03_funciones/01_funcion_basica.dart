void main(List<String> args) {
  saludar();
  print('${unMensaje()} ${edad()} años');
}

void saludar() {
  // funcion que retorna vacio
  print('Hola Fran');
}

int edad() {
  // funcion que retorna int
  return 41;
}

String unMensaje() {
  // funcion que retorna string
  return 'Tu edad es de';
}
