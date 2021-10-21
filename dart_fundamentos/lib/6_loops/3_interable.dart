void main() {
  var numeros = List.generate(10, (index) => index);

  // for (var i = 0; i < numeros.length; i++) {
  //   if (numeros[i] == 'lucas') {
  //     continue;
  //   }
  //   print(numeros[i]);
  // }

  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  final numeroAte5 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();

  print(numeros[1]);
  print(numeroAte5);

  final numeroRemoverAte5 = numeros.skipWhile((numero) => numero <= 7).toList();
  print(numeroRemoverAte5);

  var nomes = ['lucas', 'leidy', 'Joao lucas', 'fabia'];
  var nomesSkip = nomes.skipWhile((value) {
    if (value != 'leidy') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomesSkip);

  var numeroStrList = numeros.map((e) {
    return 'numero é $e';
  }).toList();
  print(numeroStrList);
}
