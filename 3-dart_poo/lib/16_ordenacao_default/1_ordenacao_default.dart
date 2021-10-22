// ignore_for_file: file_names

import 'package:dart_poo/16_ordenacao_default/cliente.dart';

void main(List<String> args) {
  var c1 = Cliente(nome: 'lucas', telefone: '999999999');
  var c2 = Cliente(nome: 'ana ', telefone: '888888888');
  var c3 = Cliente(nome: 'luis', telefone: '77777777');
  var c4 = Cliente(nome: 'pedro', telefone: '66666666');

  var lista = [c1, c2, c3, c4];
  print(lista);
  lista.sort();
  print(lista);
}
