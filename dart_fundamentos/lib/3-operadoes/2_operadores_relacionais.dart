void main() {
  //operadores relacionais
  //temos 6 tipos
  // ==(igauldade),!=(diferente),>(maior que),<(menor que )<=(menor igual),>=(maior igual)

  final idade = 18;
  // idade é maior que 18  para ter habilitação
  if (idade == 18) {
    print('pode tirar a habilitação');
  } else if (idade >= 18) {
    print('pode tirar a habilitação');
  } else {
    print('não pode tirar habilitação');
  }

  final tipoPet = 'gato';
  if (tipoPet != 'cachorro') {
    print('desculpe mas nao temos nada para seu pet');
  }
}
