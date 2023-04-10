main() {
  ////?? En Dart, tanto const como final se utilizan para declarar variables cuyos valores no cambian.
  ////?? Sin embargo, hay algunas diferencias importantes entre ambas.

  ////?? const se utiliza para valores constantes en tiempo de compilación
  ////?? final se utiliza para valores que se asignan en tiempo de ejecución y no cambian después.

  ////?? Ejemplo de const ======
  const int a = 10;
  const int b = 20;
  ////?? Esto funciona, ya que a y b son constantes en tiempo de compilación
  const int c = a + b;
  print(c);

  ////?? Ejemplo de final ======
  final int x = 5;
  ////?? getX() es una función que se ejecuta en tiempo de ejecución y devuelve un valor
  final int y = getX();
  ////?? Esto funciona, ya que y se asigna en tiempo de ejecución pero no cambia después
  final int z = x + y;
  print(z);
}

int getX() {
  return 10;
}

////?? RECORDAR ====
////?? En general, se recomienda utilizar const para valores constantes en tiempo de compilación siempre que sea posible, ya que esto puede ayudar al compilador a optimizar el código y reducir el tamaño de la aplicación. Sin embargo, si necesitas una variable que se asigna en tiempo de ejecución y no cambia después, deberías utilizar final.