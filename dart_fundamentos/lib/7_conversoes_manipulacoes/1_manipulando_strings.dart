void main() {
  // var nome = 'lcuas de almeida';

  // var subStringNome = nome.substring(6);
  // print(subStringNome);

  // var subStringNome2 = nome.substring(0, 6);
  // print(subStringNome2);

  // var sexo = 'Masculino';
  // var sexoSigla = sexo.substring(0, 1);
  // print(sexoSigla);

  // if (sexoSigla.toLowerCase().startsWith('m')) {
  //   print('homem');
  // }

  // if (nome.toLowerCase().contains('almeida')) {
  //   print('familia almeida');
  // }

  // var primeiroNome = 'lucas ';
  // var segundoNome = 'almeida';
  // var saudacao = 'ola ' + primeiroNome + segundoNome + ' seja bem vindo';
  // print(saudacao);
  // print('ola $primeiroNome $segundoNome seja bem vindo');

  // var paciente = 'lucas de almeida|30 anos|desenvolvedor flutter|RS';
  // var dadosPaciente = paciente.split('|');
  // print(dadosPaciente);
  // dadosPaciente.forEach((element) => print(element));

  var pascientes = [
    'joao lucas de almeida|30 anos|desenvolvedor flutter|RS',
    'roberto oliveira|30 anos|desenvolvedor flutter|RS',
    'joao lucas de almeida|30 anos|desenvolvedor flutter|RS',
    'felipe helfer|30 anos|desenvolvedor flutter|RS'
  ];
  var paciente;
  for (paciente in pascientes) {
    var dadosPaciente = paciente.split('|');
    print(dadosPaciente);
    var nomeCompleto = dadosPaciente[0];
    var nomess = nomeCompleto.split(' ');
    print(nomess.last);
  }
}
