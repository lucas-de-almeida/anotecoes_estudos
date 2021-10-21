void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)

  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //? usar set
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //? usar for in e adicionar o sexo em uma varivel
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //? usar for in criar lista maiores de 18
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  //? usar metodo que compara o maior usado em aula

  var novaLista = [];
  novaLista = pessoas.toSet().toList();

  var listaMaiores = [];
  var listaSexoMasculino = [];
  var listaSexofeminino = [];
  var nomePasciente;
  var pessoaMaisVelha;
  for (var pessoa in novaLista) {
    var dadosPessoas = pessoa.split('|');
    var sexo = dadosPessoas[2];
    nomePasciente = dadosPessoas[0];
    if (sexo.toString().startsWith('M')) {
      listaSexoMasculino.add(nomePasciente);
    } else {
      listaSexofeminino.add(nomePasciente);
    }
    var idadePessoa = int.tryParse(dadosPessoas[1]);
    if (idadePessoa! > 17) {
      listaMaiores.add(nomePasciente);
    }
  }
  print(listaMaiores);
  novaLista.sort((paciente2, paciente1) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  var dadosPessoaMaisVelha;
  dadosPessoaMaisVelha = novaLista.first.split('|');
  print('');
  print(
      'o nome da pessoa mais velha é ${dadosPessoaMaisVelha[0]} e sua idade é ${dadosPessoaMaisVelha[1]}');
  print('');

  print(
      'A quantidade de pessoas do sexo masculino são ${listaSexoMasculino.length}');
  print('O nome dessas pessoas são ');
  listaSexoMasculino.forEach(print);
  print('');

  print(
      'A quantidade de pessoas do sexo feminino são ${listaSexofeminino.length}');
  print('O nome dessas pessoas são ');
  listaSexofeminino.forEach(print);
  print('');
  print('a lista de pessoas maiores de idade são:');
  listaMaiores.forEach(print);
}
