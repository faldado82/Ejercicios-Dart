import 'clases/persona.dart';

main() {
  Persona persona = new Persona();
  // final persona = new Persona();

  persona.nombre = 'Fran';
  persona.edad = 41;
  //persona.bio = 'Nacio en Venezuela';

  /*
  ////?? Tambien puede escribirse de esta manera
  persona..nombre = 'Fran';
         ..edad = 41;
         ..bio = 'Nacio en Venezuela';
  */
  persona.bio = 'cambie el valor';

  print(persona.bio);
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