void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['lucas', 'leidy', 'Joao lucas', 'fabia'];
  print('imprimindo numero com for');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('imprimindo nomes com for convencional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('imprimindo numeros com for-in');
  for (var numero in numeros) {
    print(numero);
  }

  print('imprimindo nomes com for-in');
  for (var nome in nomes) {
    print(nome);
  }

  print('imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'joao lucas') {
      break;
    }
  }

  print('imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'joao lucas') {
      break;
    }
  }

  print('imprimindo nomes com for convencional com continue');
  for (var i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'lucas') {
      continue;
    }
    print(nomes[i]);
  }
}
