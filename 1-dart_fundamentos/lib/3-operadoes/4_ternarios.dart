void main() {
  final idade = 12;

  if (idade >= 18) {
    print('é maior de diade');
  } else {
    print('nao é');
  }

  final resposta = ((idade >= 18) ? true : false);
  print('é maior de idade ' + resposta.toString());
}
