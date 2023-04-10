import 'dart:async';

void main(List<String> args) {

  // Stream de una sola conexion
  final streamController = new StreamController<String>();

  // Stream de varias conexiones
  // final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen((data) => print('Despegando !! $data'),
      onError: (err) => print('Error! $err'),

      // al terminar el stream close, se manda el mensaje de success
      // si ocurre algun error no se manda este mensaje.
      onDone: () => print('Mision Completa'),

      // true no deja seguir el codigo del stream...
      cancelOnError: true 

      );

  // codigo del stream
  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston tenemos un problema'); 
  // al dar error, si tenemos en true al cancelOnError, no continuara con el codigo del stream
  streamController.sink.add('Apollo 14'); // si cancelOnError = true.. este codigo no aplica
  streamController.sink.add('Apollo 15'); // si cancelOnError = true.. este codigo no aplica

  streamController.sink.close(); // no mas informacion despues del cierre del stream
  // ! al estar cerrado el stream no se puede mandar mas informacion.
  // streamController.sink.add('Apollo 16');

  print('Fin del main');
}
