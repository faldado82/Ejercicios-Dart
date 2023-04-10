void main(List<String> args) {
  List<String> listado = ['Batman', 'Superman', 'Linterna Verde'];

  /*
  ////?? Con for
  for (int i = 0; i < listado.length; i++) {
    print(listado[i]);
  }
  */

  ////?? Con for in
  for (String nombre in listado) {
    print(nombre);
  }
}
