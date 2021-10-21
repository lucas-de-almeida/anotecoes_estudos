// ignore: file_names
// ignore_for_file: file_names

import 'package:dart_poo/7_polimorfismo/anestesista.dart';
import 'package:dart_poo/7_polimorfismo/medico.dart';
import 'package:dart_poo/7_polimorfismo/obstetra.dart';
import 'package:dart_poo/7_polimorfismo/pediatra.dart';

void main(List<String> args) {
  var medicos = <Medico>[Anestesista(), Obstetra(), Pediatra()];

  for (var medico in medicos) {
    medico.operar();
  }
}
