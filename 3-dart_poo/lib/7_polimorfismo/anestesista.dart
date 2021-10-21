import 'package:dart_poo/7_polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('preparar e esterelizar os equipamentos');
    print('anestesiar a paciente');
  }
}
