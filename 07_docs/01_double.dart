void main(List<String> args) {
  double numero1 = 3.1216;
  double numero2 = -3.1216;
  double numero3 = 0;
  double numero4 = -0;

  ////?? La propiedad SIGN de un double retorna...
  ////?? 1 si el numero es mayor a cero
  ////?? -1 si el numero es menor a cero
  ////?? 0 si el numero es 0, - 0 o NaN (not a number)
  print('Signo: ${numero1.sign} :: $numero1');
  print('Signo: ${numero2.sign} :: $numero2');
  print('Signo: ${numero3.sign} :: $numero3');
  print('Signo: ${numero4.sign} :: $numero4');
}
