class Cuadrado {
  final int lado;
  final int area;

  //!ERROR
  // Cuadrado(int lado, int area){
  //   this.lado = lado;
  //   this.area = area;
  // }

  //Cuadrado(this.lado, this.area); // una forma valida pero no correcta

  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}

void main(List<String> args) {
  final cuadrado = new Cuadrado(10);

  print(cuadrado.area);
}