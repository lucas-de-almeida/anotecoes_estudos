// ignore_for_file: file_names

import 'dart:async';

Future<void> main() async {
  print('inicio controller');
  //criação do controlado da stream
  final streamController = StreamController<int>.broadcast();
//porta de entrada da stream
  final inStream = streamController.sink;
  //porta de saida da stream
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((event) => event % 2 == 0)
      .map((event) => 'o valor é $event')
      .listen((numero) {
    print('recebi o valor $numero');
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('enviando numero $numero');

    inStream.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }
  print('fim controller');

  await streamController.close();
}
