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

  for (var paciente in pacientes) {
    final pacientesDados = paciente.split('|');
    final pascienteIdade = int.tryParse(pacientesDados[1]) ?? 0;
    if (pascienteIdade > 20) {
      print(pacientesDados[0]);
    }
  }
  final desenvolvedores = [];
  final estudantes = [];
  final dentistas = [];
  final jornalista = [];

  for (var paciente in pacientes) {
    final pacientesDados = paciente.split('|');
    final profissao = (pacientesDados[2]).toLowerCase();
    final nome = pacientesDados[0];
    if (profissao == 'desenvolvedor') {
      desenvolvedores.add(nome);
    }
    if (profissao == 'dentista') {
      dentistas.add(nome);
    }
    if (profissao == 'jornalista') {
      jornalista.add(nome);
    }
    if (profissao == 'estudante') {
      estudantes.add(nome);
    }
  }
  print('');

  print(
      'Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');
  print('');

  print('desenvolvedores');
  desenvolvedores.forEach(print);
  print('');

  print('estudates');

  estudantes.forEach(print);
  print('');

  print('jornalistas');

  jornalista.forEach(print);
  print('');

  print('dentstas');

  dentistas.forEach(print);
  print('');
  print('Apresente a quantidade de pacientes que moram em SP');
  print('');

  for (var paciente in pacientes) {
    final pacientesDados = paciente.split('|');
    final estado = pacientesDados[3].toLowerCase();
    if (estado == 'sp') {
      print(pacientesDados[0]);
    }
  }
}
