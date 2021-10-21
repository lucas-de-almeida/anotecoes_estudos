void main() {
  final diaDaSemana = 0;

  var diadaSemanaStr = '';

  if (diaDaSemana == 0) {
    diadaSemanaStr = 'segunda -feira';
    print(diadaSemanaStr);
  } else if (diaDaSemana == 1) {
    diadaSemanaStr = 'terca-feira';
    print(diadaSemanaStr);
  } else {
    print('nao identificado');
  }

  switch (diaDaSemana) {
    case 0:
      diadaSemanaStr = 'domingo';
      break;
    case 1:
      diadaSemanaStr = 'segunda-feira';
      break;
    default:
      diadaSemanaStr = 'Não identificado';
      break;
  }

  final idade = 20;

  switch (idade) {
    case 18:
    case 19:
      print('maior de idade');
      break;
    default:
      print('menor de idade');
      break;
  }
}
