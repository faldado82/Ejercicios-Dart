void main(List<String> args) {
  double numero1 = 3.1416;
  double numero2 = -3.1416;
  double numero3 = 0;
  double numero4 = -0;

  ////?? La propiedad "sign" de un double retorna...
  ////?? 1 si el numero es mayor a cero
  ////?? -1 si el numero es menor a cero
  ////?? 0 si el numero es 0, - 0 o NaN (not a number)
  print('Signo: ${numero1.sign} :: $numero1');
  print('Signo: ${numero2.sign} :: $numero2');
  print('Signo: ${numero3.sign} :: $numero3');
  print('Signo: ${numero4.sign} :: $numero4');

  ////?? Otra propiedad es "isFinite" que retorna...
  ////?? True si el numero es finito
  ////?? false si el numero es infinito
  double infinito =
      double.infinity; // es el numero mayor que yo puedo representar en dart

  print('isFinite: ${numero1.isFinite} :: $numero1'); // true >> es finito
  print('isFinite: ${infinito.isFinite} :: $infinito'); // false >> es infinito

  ////?? El metodo "abs" hace referencia al numero absoluto.
  ////?? si este es positivo se devuelve positivo.
  ////?? si el numero es negativo se devuelve positivo
  print('abs: ${numero1.abs()} :: $numero1'); // positivo queda positivo
  print(
      'abs: ${numero2.abs()} :: $numero2'); // negativo se transforma a positivo

  ////?? los metodos "ceil y floor" hacen referencia al numero entero que le sigue si el numero que se da tiene decimales.
  ////?? "ceil" es como redondear el numero hacia arriba
  ////?? "floor" es como redondear el numero hacia abajo
  print('ceil: ${numero1.ceil()} :: $numero1'); // devuelve 4
  print('floor: ${numero1.floor()} :: $numero1'); // devuelve 3

  ////?? "ceilToDouble y floorToDouble" es lo mismo a ceil y floor, pero devuelven su siguiente numero pero con valor decimal
  print('ceilToDouble: ${numero1.ceilToDouble()} :: $numero1'); // devuelve 4.0
  print(
      'floorToDouble: ${numero1.floorToDouble()} :: $numero1'); // devuelve 3.0

  ////?? La propiedad "round" hara un redondeo del numero, hacia el numero entero mas cercano
  ////?? si por ejemplo el numero decimal (3.5), este redondeara hacia arriba, devolviendo (4)
  ////?? por el contrario, si el numero decimal es negativo(-3.5), este redondeara hacia abajo, devolviendo (-4).
  print('round: ${numero1.round()} :: $numero1'); // devuelve 3
  print(
      'round: ${numero1.roundToDouble()} :: $numero1'); // devuelve 3.0, sirve para seguir manejando el numero double

  ////?? La propiedad "clamp" solicita dos numeros, estos serviran como un rango, un minimo y un maximo,
  ////?? la propiedad clamp actuara en base a ese rango y acercara el numero otorgado a alguno del rango
  ////?? NOTA: si el numero otorgado esta dentro del rango, el numero otorgado se mantiene
  print(
      'clamp: ${numero1.clamp(4, 7)} :: $numero1'); // devuelve 3.0, sirve para seguir manejando el numero double

  ////?? toInt quita los decimales y se queda con el entero
  print('toInt: ${numero1.toInt()} :: $numero1'); // devuelve 3

  ////?? hay mas metodos para seguir investigando
  ////?? Remainder
  ////?? truncate, truncateToDouble
  ////?? toString, toStringAsFixed, toStringAsExponential, toStringAsPrecision
}
