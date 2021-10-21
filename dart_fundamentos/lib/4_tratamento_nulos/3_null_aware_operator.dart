String? nome;

void main() {
  var sobrenome = ' de almeida';
  //var nomeCompleto = ((nome != null) ? nome! + 'lucas ' : 'lucas de almeida');
  var nomeCompleto = (nome ?? 'Lucas') + sobrenome;
  print(nomeCompleto);
}
