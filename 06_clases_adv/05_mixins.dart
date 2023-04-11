////?? QUE ES UN MIXIN
////?? Podemos utilizar los mixins para darle a las propiedades y metodos que tiene una clase a otra.
////?? Es muy parecido a un extends pero con algunas particularidades.
////?? Practicamente cualquier clase puede ser un mixin
////?? Los mixins no pueden ser instanciados
////?? no puedo crear una clase abstracta y tampoco voy a poder declarar constructores dentro del mixin

////?? Los mixins se usan para heredar o transferirle sus propiedades y metodos a otras clases.

mixin Logger {
  // Logger(){} //! ERROR >> los mixins no pueden declarar constructores
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

mixin Logger2 {
  // copia del logger con el mismo metodo pero con nombre diferente
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

// abstract class Astro extends Logger{} //! ERROR >> los mixins no se pueden extender para transferir sus propiedades y metodos
////?? Los mixins pueden heredar sus propiedades y metodos con la palabra reservada with
abstract class Astro with Logger {
  // utilizo with para acceder al mixin
  String? nombre;
  Astro() {
    imprimir('--Init del Astro--'); // llama al metodo imprimir del Logger
  }

  void existo() {
    imprimir(
        '--Soy un ser celestial y existo--'); // llama al metodo imprimir del Logger
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  // aca accedo a los dos mixins separados por una coma ','
  String? nombre;
  Asteroide(this.nombre) {
    imprimir('Soy $nombre');

    imprimir2('Soy $nombre');
  }
}

void main(List<String> args) {
  //final log = new Logger(); //! ERROR >> no puedo crear instancias de mixin

  final ceres = new Asteroide('Ceres');
  ceres.existo();
}
