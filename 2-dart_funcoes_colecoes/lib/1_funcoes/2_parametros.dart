void main() {
  print(somaDoubles());
}

int somaInteiros(int numeroA, int numeroB) {
  print('executando a soma de $numeroA e $numeroB');
  return numeroA + numeroB;
}

double somaDoubles({double? numeroA, double? numeroB}) {
  if (numeroA != null && numeroB != null) {
    print('executando a soma de $numeroA e $numeroB');

    return numeroA + numeroB;
  }
  return 0.0;
}

double somaDoublesObrigatorios(
    {required double numeroA, required double numeroB}) {
  return numeroA + numeroB;
}
