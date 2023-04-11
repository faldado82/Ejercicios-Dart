class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo; // cuadrado: base == altura
  // rectangulo: base != altura

  // el factory constructor debe regresar una nueva instancia de Rectangulo
  // o bien una instancia previamente existente

  // un constructor factory puede ser utilizado para........
  // realizar algun tipo de procedimiento, operacion o calculo
  // para determinar cual es el constructor de mi clase que mejor se adapta
  // a las necesidades que me estan pidiendo
  // o bien regresar una instancia previamente creada de Rectangulo

  // yo tengo que regresar una instancia de rectangulo o una instancia ya creada
  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }

  @override
  String toString() {
    // estoy retornando un mapa{}, por eso el .toString() al final
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}

void main(List<String> args) {
  final figura1 = new Rectangulo(10, 10); // cuadrado
  final figura2 = new Rectangulo(100, 15); // rectangulo

  print(figura1);
  print(figura2);
}
