void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printCustom);

  //Expand
//array bidimensional
  var lista = [
    [1, 2],
    [3, 4]
  ];
  var novaList = lista.expand((numeros) => numeros);

  print('any');
  final listaBusca = ['lucas', 'leidy', 'joao lucas'];
  if (listaBusca.any((nome) => nome == 'lucas')) {
    print('tem lucas');
  } else {
    print('nao tem');
  }

  //every
  final listaBusca2 = ['lucas', 'leidy', 'joao lucas'];

  if (listaBusca2.every((nome) => nome.contains('u'))) {
    print('todos tem U');
  } else {
    print('nem todos tem u');
  }

  //sort
  print('sort');
  var listaParaOrdenacao = [993, 1, 2, 55, 66, 78, 44];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listNomesOrdenacao = ['lucas', 'leidy', 'joao lucas'];
  listNomesOrdenacao.sort();
  print(listNomesOrdenacao);

  var listaPacientes = [
    'lucas almeida|30',
    'joao lucas|3',
    'ao lucas|3',
    'leidy|31'
  ];
  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);

  var listaPacientes2 = [
    'lucas almeida|30',
    'joao lucas|3',
    'ao lucas|3',
    'leidy|31'
  ];
  listaPacientes2.sort((paciente2, paciente1) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print('lll${listaPacientes2}');
}

void printCustom(Object valor) {
  print(valor);
}
