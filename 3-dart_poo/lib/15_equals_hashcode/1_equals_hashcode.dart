// ignore_for_file: file_names

import 'package:dart_poo/15_equals_hashcode/pessoa.dart';

void main(List<String> args) {
  var p1 = Pessoa(nome: 'lucas', email: 'emaillucas');
  var p2 = Pessoa(nome: 'lucas', email: 'emaillucas');

  if (p1 == p2) {
    print('é igual');
  } else {
    print('nao é igual');
  }

  print(p1.hashCode);
  print(p2.hashCode);
  print(p1);
  print(p2);
}
