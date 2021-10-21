void main() {
  final idade = 30;

  print('sua idade é $idade');

  final valor = -20;
  if (valor.isNegative) {
    print('é negativo');
  }

  final valorDouble = 10.65;

  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorString = '30';
  final valorInt = int.parse(valorString);
  final valorInt2 = int.tryParse(valorString);
}
