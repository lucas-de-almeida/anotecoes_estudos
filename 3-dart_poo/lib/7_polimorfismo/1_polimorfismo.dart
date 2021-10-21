// ignore: file_names
// ignore_for_file: file_names

import 'package:dart_poo/7_polimorfismo/anestesista.dart';
import 'package:dart_poo/7_polimorfismo/medico.dart';
import 'package:dart_poo/7_polimorfismo/obstetra.dart';
import 'package:dart_poo/7_polimorfismo/pediatra.dart';
import 'package:dart_poo/7_polimorfismo/residente_anestesia.dart';

void main() {
  var medicos = <Medico>[
    ResidenteAnestesia(),
    Anestesista(),
    Obstetra(),
    Pediatra()
  ];

  for (var medico in medicos) {
    medico.operar();
  }
}
