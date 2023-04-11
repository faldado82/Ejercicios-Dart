// cuando definimos una clase como abstracta, podemos seguir usando sus metodos pero no podra instanciarse
// a su vez, podremos declarar metodos, donde no es necesario definirlo como tal y retornar algo
// sino que podriamos sobreescribirlo en los hijos, definirlo ahi y retornar el valor que querramos
// independientemente del hijo que estemos usando podremos usar el mismo metodo pero retornar diferentes valores.

abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('vehiculo apagado');
  }

  bool revisarMotor();
}

class Auto extends Vehiculo {
  int kilometros = 0;

  @override
  bool revisarMotor() {
    print('Motor OK !');
    return true;
  }
}

class MotoElectrica extends Vehiculo {
  @override
  bool revisarMotor() {
    print('Bateria en buen estado');
    return true;
  }
}

void main(List<String> args) {
  //final ford = new Vehiculo(); //! ERROR con clase abstracta
  final ford = new Auto();

  ford.encender();
  ford.apagar();
  ford.revisarMotor(); // debido a la clase abstracta podemos devolver diferentes valores segun la clase

  final miMoto = new MotoElectrica();
  miMoto.revisarMotor(); // debido a la clase abstracta podemos devolver diferentes valores segun la clase
}
