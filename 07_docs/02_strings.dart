void main(List<String> args) {
  String nombre = 'Fran';
  String apellido = 'Aldado';

  ////?? Diferentes formas de utilizar strings
  String nombreCompleto1 = '$nombre $apellido';
  String nombreCompleto2 = nombre + ' ' + apellido;
  String nombreCompleto3 = '$nombre' ' ' '$apellido';

  print(nombreCompleto1);
  print(nombreCompleto2);
  print(nombreCompleto3);

  ////?? la propiedad length nos devolvera un numero de la cantidad de caracteres del string
  print('Length: ${nombreCompleto1.length}'); // 11

  ////?? El metodo contains, es key sensitive
  ////?? ademas se puede pasar como segundo argumento el index o posicion que se busca
  // devuelve true si encuentra el valor dado en todo el string
  print('Contains a: ${nombreCompleto1.contains('a')}'); // true

  // devuelve true si encuentra el valor dado en la posicion 5
  print('Contains A en pos 5: ${nombreCompleto1.contains('A', 5)}'); // true
  print('Contains f: ${nombreCompleto1.contains('f')}'); // false, key sensitive

  ////?? El metodo "endsWith" nos ayuda a chequear si la letra que estoy mandando, es la letra con la que termina el string
  print('EndsWidth a: ${nombreCompleto1.endsWith('a')}'); // false

  ////?? "PadLeft" y "PadRigth"
  // mi string tenia un valor de 11 en su length, por lo tanto, para llegar a 13 me quedan 2 x ...
  // por eso hay 6 puntos = ......Fran Aldado
  print('PadLeft: ${nombreCompleto1.padLeft(13, '...')}');
  print('PadRigth: ${nombreCompleto1.padRight(13, '...')}');

  ////?? OPERADORES
  print('Operadores [] posicion 0: ${nombreCompleto1[0]}'); // F
  print(
      'Operadores * : ${(nombreCompleto1 + ' ') * 3}'); // multiplica tantas veces el valor del string

  ////?? replaceAll intercambia el valor dado si encuentra una ocurrencia en el string
  print(
      'Replace All: ${nombreCompleto1.replaceAll(RegExp(r'a'), 'e')}'); // coloco una 'e' en donde hay 'a' (keySensitive)

  ////?? SubString es utilizado para cortar parte del string
  print(
      'SubString con index final: ${nombreCompleto1.substring(0, 4)}'); // comienza en index 0 termina en index 4
  print(
      'SubString sin index final: ${nombreCompleto1.substring(5)}'); // comienza en index 5 hasta el final

  ////?? "IndexOf" es utilizado para saber en que index esta el caracter buscado
  print('Index of: ${nombreCompleto1.indexOf('A')}'); // A esta en el index 5

  ////?? Split divide el string y retorna una lista, sin incluir el caracter dado
  ////?? cada vez que encuentra el caracter dado sera un item nuevo
  print('Split: ${nombreCompleto1.split(' ')}'); // [Fran, Aldado]
  print('Split: ${nombreCompleto1.split('a')}'); // [Fr, n Ald, do]

  //Ejercicio, capitalizar la ultima letra
  print('Split: ${nombreCompleto1[nombreCompleto1.length -1].toUpperCase()}'); // O
  
}
