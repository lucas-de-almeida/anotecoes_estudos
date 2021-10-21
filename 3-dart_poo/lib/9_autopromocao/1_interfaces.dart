// ignore_for_file: file_names

import 'package:dart_poo/8_interfaces/carro.dart';
import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();
// quando checamos se a variavel é "is" de um tipo
//caso ela seja o dart vai converte-la automaticamente
  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }
  // (golCarro as Gol).tipoDeRodas();
  printarDadosDoCarro(gol);
  printarDadosDoCarro(uno);
}

void printarDadosDoCarro(Carro carro) {
  print("""
  Carro:
    Tipo: ${carro.runtimeType}
    Portas: ${carro.portas}
    Motor: ${carro.motor}
    Rodas: ${carro.rodas}

  """);
}
