void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  var listMaior20 = [];
  var listaDesenvolvedores = [];
  var list_estudadnte = [];
  var listDentista = [];
  var listJornalista = [];
  var listMoradoresSp = [];
  // print(pacientes);
  var paciente;
  for (paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    //print(dadosPaciente);
    var idadePaciente = int.tryParse(dadosPaciente[1]);
    //print(idadePaciente);
    var nomePaciente = dadosPaciente[0];
    // print(nomePaciente);
    var profissaoPaciente = dadosPaciente[2].toString().toLowerCase();
    //print(profissaoPaciente);
    var estadoPaciente = dadosPaciente[3];
    if (profissaoPaciente == 'dentista') {
      listDentista.add(nomePaciente);
    } else if (profissaoPaciente == 'desenvolvedor') {
      listaDesenvolvedores.add(nomePaciente);
    } else if (profissaoPaciente == 'estudante') {
      list_estudadnte.add(nomePaciente);
    } else if (profissaoPaciente == 'jornalista') {
      listJornalista.add(nomePaciente);
    }
    if (estadoPaciente == 'SP') {
      listMoradoresSp.add(nomePaciente);
    }
    if (idadePaciente! > 20) {
      listMaior20.add(nomePaciente);
    }
    // print(dadosPaciente);
  }
  print('a lista de pacientes com mais de 20 anos é');
  listMaior20.forEach(print);
  print(' Lsta de desenvolvedores é :');
  listaDesenvolvedores.forEach(print);
  print(' Lsta de estudates é :');
  list_estudadnte.forEach(print);
  print(' Lsta de jornalistas é :');
  listJornalista.forEach(print);
  print(' Lsta de dentista  é :');
  listDentista.forEach(print);

  print('Moradores de são paulo são');
  listMoradoresSp.forEach(print);
}
