// variaveis de nivel superior nao podem ser inicializadas depois
//nao é permitido \/
String? nomeCompletoSuperior;

void main() {
  // variaveis locais nao precisam ser inicializadas ao serem criadas
  //podem ser atribuido valor depois
  String? nomeCompleto; // ? permite a criação de variaveis nulas

  print(nomeCompleto!
      .length); // ! permite usar variaveis nulas o compilador ignora o erro

// variaveis locais que são nulas por padrao
// se for atribuido valor depois ela automaticamente é promovida
// a nao nula
  nomeCompleto = 'lucas';
}
