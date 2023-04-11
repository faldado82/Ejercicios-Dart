import 'clases/mi_servicio.dart';

void main(List<String> args) {
  final spotifyService1 = new MiServicio();
  spotifyService1.url = "https://api.spotify.com/v1";

  final spotifyService2 = new MiServicio();
  spotifyService2.url = "https://api.spotify.com/v2";

  print(spotifyService1 == spotifyService2); // true con singleton

  print(spotifyService1.url);
  print(spotifyService2.url);
}
