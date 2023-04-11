class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('vehiculo apagado');
  }
}

class Auto extends Vehiculo {
  int kilometros = 0;
}

void main(List<String> args) {
  final ford = new Vehiculo();

  ford.encender();
  ford.apagar();
}
