void main() {
  final valorCalculado = somaInteiros(10, 20);
  print('a soma de dois inteiros é $valorCalculado');
}

int somaInteiros(int numeroA, int numeroB) {
  print('executando a soma de $numeroA e $numeroB');
  return numeroA + numeroB;
}
