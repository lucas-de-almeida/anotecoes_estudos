// ignore_for_file: file_names

Future<void> main() async {
  var nomes = ['lucas', 'leidy', 'joão lucas'];

  print('inicio');

  // await Future.forEach<String>(nomes, (nome) async {
  //   print(await saudacao(nome));
  // });

  // for (var nome in nomes) {
  //   print(await saudacao(nome));
  // }

  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();
  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);

  // nomes.forEach((nome) async {
  //   print(await saudacao(nome));
  // });
  print('final');
}

Future<String> saudacao(String nome) {
  return Future.delayed(Duration(seconds: 1), () => 'óla $nome');
}
