void main() {
  print('inicio do p1');
  processo2();
  // metodos futures possuem dois Status (Incompleto ,Concluido (Com valor,Com erro))

  //concluido com valor entra no then
  //concluido com erro vai entrar no catchError ou onError
  // whenComplete sempre sera excecutado
  processo3().then((value) => print(value));
  processo4()
      .then((value) => print(value))
      .catchError((onError) => print('Erro ao executar processo 4'));
  processo4().then((value) => print(value), onError: (error) {
    print('erro no then');
  });
  print('fim do p1');
  processo3().then((value) {
    throw Exception();
  });

  processo3()
      .then((value) => print(value))
      .whenComplete(() => print('finalizou no when complete'));
}

Future<String> processo4() {
  print('incio p4');
  return Future.delayed(Duration(seconds: 2), () => throw Exception());
}

Future<String> processo3() {
  print('incio p3');
  return Future.delayed(Duration(seconds: 2), () => 'fim do processo p3');
} //

Future<void> processo2() async {
  print('inicio do p2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('fim do p2');
  });
}
