void main(List<String> args) {
  List<int> lista1 = [1, 2, 3, 4, 5, 6];
  List<int> lista2 = [];
  List<int> lista3 = [3, 1, 2, 15, -10];
  List<String> listaNombres = ['Tony', 'Peter'];

  print(
      'Length: ${lista1.length}'); // cuenta la cantidad de elementos de la lista
  print('First: ${lista1[0]}'); // trae el primer elemento de la lista
  print('First: ${lista1.first}'); // trae el primer elemento de la lista

  print(
      'Last: ${lista1[lista1.length - 1]}'); // trae el primer ultimo de la lista
  print('Last: ${lista1.last}'); // trae el primer ultimo de la lista

  print(
      'isEmpty: ${lista1.isEmpty}'); // false, preguntamos si esta vacia la lista
  print(
      'isEmpty: ${lista2.isEmpty}'); // true, preguntamos si esta vacia la lista

  print('asMap Numeros: ${lista1.asMap()}'); // imprime la lista como un mapa
  Map listaMapa =
      lista1.asMap(); // guardo la lista como mapa en una variable de mapa
  print('ListaMapa: ${listaMapa[4]}'); // 5, pido el 4 elemento del mapa

  print('asMap Nombres: ${listaNombres.asMap()}');
  Map mapaNombres =
      listaNombres.asMap(); // guardo la lista como mapa en una variable de mapa
  print('MapaNombres: ${mapaNombres[0]}'); // Tony, pido el elemento 0 del mapa

  ////?? Si queremos saber en que indice esta un elemento, podemos buscarlo con "Index Of"
  ////?? para ello deberemos conocer su valor y buscarlo con index of
  ////?? esto nos retornara el valor de su posicion o su index
  ////?? si no encuentra el valor otorgardo retorna -1
  print('Index Of Peter: ${listaNombres.indexOf('Peter')}'); // 1
  print('Index Of John: ${listaNombres.indexOf('John')}'); // -1

  ////?? Para listados complejos de objetos o similares podriamos usar
  ////?? El "indexWhere" buscara una de las oopciones del listado que cumpla con las condiciones que se establecen
  ////?? Una vez encontrado un valor que haga match, sale de su busqueda.
  ////? es bastante eficiente porque no queda buscando despues de encontrar el match
  ////?? si no encuentra el valor otorgardo retorna -1
  int buscoNombre1 = listaNombres.indexWhere(
      (elementoBuscado) => (elementoBuscado == 'Peter') ? true : false);

  int buscoNombre2 = listaNombres.indexWhere(
      (elementoBuscado) => (elementoBuscado == 'John') ? true : false);

  // if (elementoBuscado == 'Peter') {
  //   return true;
  // } else {
  //   return false;
  // }
  print('indexWhere Peter: $buscoNombre1'); // 1 se refiere al index
  print('indexWhere John: $buscoNombre2'); // -1 se refiere al index

  ////?? "remove", eliminara el elemento del listado original
  ////?? si encuentra el elemento devuelve true
  print('Remover 8 de lista1: ${lista1.remove(8)}'); // false
  print('Remover 4 de lista1: ${lista1.remove(4)}'); // true

  print('lista1 sin valor 4: ${lista1}'); // muestro listado

  ////?? El metodo entreverar o "shuffle", mezclara los elementos del listado
  ////?? cada vez que se ejecute tendra un orden diferente
  lista1.shuffle();
  print('lista1 con shuffle: ${lista1}'); // muestro listado

  ////?? para ordenar una lista hay un metodo llamado "sort"
  print('lista3 original: ${lista3}'); // muestro listado original
  lista3.sort();
  print('lista3 ordenada: ${lista3}'); // muestro listado ordenado

  ////?? Orden inverso con la propiedad "reversed"
  ////?? debo hacer un "toList()", porque reversed retorna un Iterable
  print(
      'lista3 inversa: ${lista3.reversed.toList()}'); // muestro listado inverso

  ////?? Con el metodo "add" agregamos un elemento a nuestra lista
  listaNombres.add('Martin');
  print('Lista con Martin: $listaNombres'); // muestro list

  ////?? Con el metodo "addAll" agregamos un ekemento a nuestra lista
  ////?? notar que el addall como tiene varios elementos, estos estan entre llaves [] y separados por coma
  listaNombres.addAll([
    'Frank',
    'Kevin',
    'Alex',
  ]);
  print(
      'Lista con 3 elementos mas: $listaNombres'); // muestro lista con 3 elementos mas

  ////?? para trabajar con cada elemento de la lista podemos usar un "forEach"
  ////?? se imprimiran todos los elementos de la lista en mayusculas
  ////?? pero estos no se guardaran en la lista original
  ////?? cumple con una instruccion, pero no guarda sus resultados
  listaNombres.forEach((element) {
    element = element.toUpperCase();
    print(element);
  });
  print('Lista original: $listaNombres'); // muestro lista original

  ////?? para guardarlos en la lista original deberia generar un "map"
  ////?? un map basicamente es un un forEach pero retorna un iterable
  ////?? con el producto de mis modificaciones que le haga a ese listado

  final nuevaListaNombres = listaNombres.map((e) => e.toUpperCase()).toList();
  // aqui estoy realizando basicamente los mismo que en el forEach
  // por cada elemento de mi listado lo estoy haciendo mayusculas
  // la unica diferencia es que este iterable (map) lo guardo en una nueva lista.
  // y lo paso a toList para transformar el iterable a lista
  print('Nueva Lista: $nuevaListaNombres');
}
