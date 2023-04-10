main() {
  double a = 2;
  double b = 3;

  double c = a + b; // suma c = 5.0

  double d = c / a; // division d = 2.5

  double e = d - 0.5; // resta e = 2.0

  double f = a * c; // multiplicacion f = 10.0

  double z = f % 3; // resto o sobrante
  print(z); // z = 1.0

  int x = 10 ~/ 3; // Division entera, no existen valores decimales
  print(x);

  e = -e; // -expr  se usa para cambiar el valor de positivo a negativo
  print(e); // e = -2.0
  e = -e;
  print(e); //  e = 2.0

  x++; // incremento en 1 el valor de x
  print(x); // x=4
  x--; // decremento en 1 el valor de x
  print(x); // x=3

  x += 3;
  print(x); // x = 6
  x -= 2;
  print(x); // x = 4
}
