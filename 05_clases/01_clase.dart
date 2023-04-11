import 'clases/persona.dart';

main() {
  // Persona persona = new Persona();
  final persona = new Persona(edad: 33, nombre: 'Fran');
  // final persona = new Persona(33, nombre: 'Fran');
  final persona2 = new Persona.persona30('Fran2'); // constructor con nombre persona30
  final persona3 = new Persona.persona40(40); // constructor con nombre persona40

  //persona.nombre = 'Fran';
  //persona.edad = 41;
  //persona.bio = 'Nacio en Venezuela';

  /*
  ////?? Tambien puede escribirse de esta manera ('Operador Cascada')
  persona..nombre = 'Fran';
         ..edad = 41;
         ..bio = 'Nacio en Venezuela';
  */
  persona.bio = 'cambie el valor';

  //print(persona.bio);
  print(persona);
  print(persona2);
  print(persona3);
}

/*
////?? Generalmente las clases se colocan en carpetas y archivos aparte.
////?? en este caso lo cortamos y llevamos a la carpeta clases y pegamos en el archivo persona
////?? despues de esto, podemos importar desde la lamparita de Persona que esta en nuestro main()
class Persona {
  ////?? campos o propiedades
  String? nombre;
  int? edad;
  String? bio;

  ////?? set y get
  ////?? constructores
  ////?? metodos
  @override
  String toString() => '$nombre $edad $bio';
}
*/