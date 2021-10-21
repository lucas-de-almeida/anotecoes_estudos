void main() {
  // operadores logicos
  //&&(E)

  final sexo = 'M';
  final idade = 18;

  if (sexo == 'M') {
    if (idade <= 18) {
      print('pode entrar');
    } else {
      print('nao poide entrar');
    }
  } else {
    print('nao poide entrar');
  }

  if (sexo == 'M' && idade >= 18) {
    print('pode entrar');
  } else {
    print('nao pode entrar');
  }
// operador ||(OU) uma das condições tem que ser ok
  if (sexo == 'M' || idade >= 18) {
    print('pode entrar');
  } else {
    print('nao pode entrar');
  }

  //operador !(não) invbersão de valor
  // se nao for verdade
  if (!(sexo == 'M' && idade >= 18)) {
    print('pode entrar');
  } else {
    print('nao pode entrar');
  }
}
