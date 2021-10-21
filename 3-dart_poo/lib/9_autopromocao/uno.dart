import 'package:dart_poo/8_interfaces/carro.dart';

class Uno implements Carro {
  @override
  String motor = '1.0';

  @override
  int portas = 4;

  @override
  int rodas = 2;

  @override
  int velocidadeMaxima() {
    return 120;
  }
}
