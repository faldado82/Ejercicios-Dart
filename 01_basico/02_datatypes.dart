main() {
  //! NUMEROS =================================================
  /*
  var x = 1; 
  ////? var identifica que tipo de variable es, en este caso int
  ////? no es recomendable usar
  print(x);

  int a = 10;
  double b = 5.5;
  print(a);
  print(b);

  ////? Puedo sumar int + double, el resultado sera double
  print(a + b);
  ////! int resultado ====> ERROR
  double resultado = a + b;
  print(resultado);

  int? c;
  ////? con el ? le estoy diciendo que mi variable 'c' puede ser nula
  ////? por lo tanto al imprimir c en pantalla aparecera 'null'
  ////? si no tuviera el signo '?', apareceria un error.
  print(c);
  ////! int d = null; ====> ERROR

  */

  //! STRINGS =================================================
  /*
  var nombre = 'fran';
  ////?? var identifica que tipo de variable es, en este caso string
  ////?? no es recomendable usar

  String nombre1 = 'Tony';
  String nombre2 = "Tony";
  String nombre3 = "O'Connor"; // 'O\'Connor'
  String apellido = 'Stark';

  String nombreCompleto = '$nombre1 $apellido'; 

  String multilinea = '''
  Hola, 
  Como Estas ?
  $nombreCompleto''';

  print(multilinea);
  */

  //! BOOLEANS =================================================
  /*
  bool isActive = true;
  bool isNotActive = !isActive; // contrario a true ==> false
  print(isNotActive); // false
  */

  //! LISTS (Arreglo o colecciones) ===========================
  /*
  ////?? Las listas tambie pueden contener multples tipos de datos
  ////?? para esto hay q tratar a la lista como objeto
  List<Object> lista = [1, 5.5, 'un texto', true];
  print(lista);

  ////?? si es una lista solo de strings 
  ////?? solo defimos el tipo de dato que va a conterner la lista
  List<String> villanos = ['Doom', 'Lex', 'Red Skull'];
  ////??    indices de valor      0      1          2
  print(villanos);
  villanos[0] = 'Joker'; // sobreescribimos el indice 0
  print(villanos);
  */

  //! SETS ====================================================
  /*
  ////?? los sets a diferencia de las listas, no pueden tener elementos repetidos
  ////?? los diferenciamos tambien por sus corchetes curvos "{}"
  ////?? ademas si su tipo de dato es string, este no podra contener otro tipo de dato.
  Set<String> villanos2 = {'Doom', 'Lex', 'Red Skull'};
  villanos2.add('Joker');
  villanos2.add('Joker');
  villanos2.add('Joker');
  villanos2.add('Joker');
  ////?? "Joker", se agregara una vez sola, las siguientes veces...
  ////?? como ya existe ese elemento, no se agregara.

  ////?? este set contendra todos los tipos de datos
  ////?? solo debemos decir que su tipo de dato es Object para poner varios tipos de datos
  Set<Object> todosLosTiposDeDatos = {
    'texto',
    1,
    5.5,
    true,
    false,
    [1, 2, 3, 4],
    {1, 2, 3, 4}
  };
  print(todosLosTiposDeDatos);

  ////?? si tengo una lista con elementos repetidos los cuales quiero quitar
  ////?? facilmente se podrian quitar si se transforma a set
  ////?? y despues se pasa a list
  List<int> listaNumeros = [1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6];
  Set<int> setNumeros = listaNumeros.toSet();
  listaNumeros = setNumeros.toList();
  print(listaNumeros);
  */

  //! MAP (Diccionarios, objecto literal) =================================================================

  ////?? los mapas son una estructura de datos que nos permite almacenar información en pares clave-valor.
  ////?? La clave es un tipo de dato, en este caso un String que nos permite identificar cada valor almacenado en el mapa.
  ////?? las claves no se pueden repetir

  ////?? Creamos un mapa con información sobre una persona
  ////?? En la clave ponemos String, en el valor dynamic, ya que podremos usar varios tipos de datos
  Map<String, dynamic> persona = {
    "nombre": "Juan",
    "edad": 25,
    "ciudad": "Madrid",
    "es hombre": true,
  };

  ////?? Acceder a los valores del mapa
  print("Nombre: ${persona["nombre"]}");
  print("Edad: ${persona["edad"]}");
  print("Ciudad: ${persona["ciudad"]}");

  ////?? Actualizar el valor de una clave en el mapa
  persona["edad"] = 26;
  ////?? Imprimir el mapa completo
  print(persona);

  ////?? En la clave ponemos String, en el valor dynamic, ya que podremos usar varios tipos de datos
  ////?? como vemos en este ejemplo, poner claves nuemricas no nos da informacion acerca del valor que estamos guardando.
  ////?? pero igualmente puede ser utilizado y puede haber casos que necesitemos usar este tipo de clave-valor
  Map<int, dynamic> persona2 = {
    1: "Fran",
    2: 41,
    3: "Maracaibo",
    4: true,
  };
  print(persona2);

  ////?? declaro un mapa
  Map<String, dynamic> capitan = new Map();
  capitan.addAll(
      persona); // ahora capitan tiene los datos de persona como si fuera una copia
  print(capitan);
}
