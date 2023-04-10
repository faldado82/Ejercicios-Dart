String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  mapa = { ...mapa }; // Romper el valor de referencia con Spread
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';

  return mapa;
}

void main(List<String> args) {
  String nombre1 = 'fernando';
  String nombre2 = capitalizar(nombre1);

  print(nombre1);
  print(nombre2);

  Map<String, String> persona = {'nombre': 'Tony Stark'};
  Map<String, String> persona2 = capitalizarMapa(persona);

  print(persona);
  print(persona2);
}
