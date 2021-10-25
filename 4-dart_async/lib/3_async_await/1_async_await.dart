// ignore_for_file: file_names

Future<void> main() async {
  // processo1().then((mensagem) {
  //   processo2()
  //       .then((mensagem) => print(mensagem))
  //       .catchError((error) => print(error));
  //   print('a mensagem é $mensagem');
  // }).catchError((error) {
  //   print(error);
  // });
  try {
    print('inciio do main');
    var mensagem = await processo1();
    print('a mensagem é $mensagem');
    var mensagem2 = await processo2();
    print('a mensagem é $mensagem2');
    await processo3();
  } on Exception catch (e) {
    print('Erro na chamada do processo 3 $e');
  }
  print('fim do main');
}

Future<String> processo1() {
  print('incio p1');
  return Future.delayed(Duration(seconds: 1), () => 'fim do processo p1');
}

Future<String> processo2() {
  print('incio p2');
  return Future.delayed(Duration(seconds: 1), () => 'fim do processo p3');
}

Future<String> processo3() {
  print('incio p2');
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}
