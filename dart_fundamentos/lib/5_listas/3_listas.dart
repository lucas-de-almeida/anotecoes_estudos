void main() {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(5);
  print(numeros);

  final nomes = ['lucas', 'leidy', 'joao lucas'];
  print(nomes);
  nomes.add('Fabia');
  print(nomes);
  print('adicionando duda');
  nomes.insert(0, 'duda');
  print(nomes);

  nomes.removeWhere((nome) => nome == 'lucas');
  print(nomes);

  nomes.removeWhere((nome) {
    if (nome == 'duda') {
      return true;
    } else {
      return false;
    }
  });
  print(nomes);

  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final repeticoes = List.filled(10, 'teste');
  print(repeticoes);

  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);

  var some = numerosGeradosParaCalculo.fold<int>(
      0, (previousValue, numero) => previousValue = previousValue + numero);

  print(some);

  //Spread operator (...)

  //listaNumerosSpread.addAll(listaNumerosSpreadB);
  var listaNumerosSpread = [1, 2, 3];
  var listaNumerosSpreadB = [...listaNumerosSpread, 4, 5, 6];

  // collection if
  var promocaoAtiva = false;

  var produtos = [
    'cerveja',
    'refrigenrante',
    if (promocaoAtiva) 'suco de laranja'
  ];
  print(produtos);

  //collection for

  var listaInts = [0, 1, 2, 3];
  var listaStrings = ['#0', for (var i in listaInts) '#$i'];
  print(listaStrings);
}
