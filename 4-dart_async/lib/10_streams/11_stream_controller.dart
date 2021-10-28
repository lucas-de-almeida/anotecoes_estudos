// ignore_for_file: file_names

import 'dart:async';

Future<void> main() async {
  print('inicio controller');
  //criação do controlado da stream
  final streamController = StreamController<Pessoa>.broadcast();
//porta de entrada da stream
  final inStream = streamController.sink;
  //porta de saida da stream
  final outStream = streamController.stream;

  outStream.listen((pessoa) {
    print('seja bem vindo ${pessoa.nome}');
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('enviando numero $numero');

    inStream.add(Pessoa(nome: 'Lucas de almeida $numero'));
    await Future.delayed(Duration(milliseconds: 500));
  }
  print('fim controller');

  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
