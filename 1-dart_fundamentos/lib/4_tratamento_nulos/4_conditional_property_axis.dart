String? nomeCompleto = 'Lucas de Almeida';
void main() {
//Null aware operator
// var nomeCompeltoLocal =  nomeCompleto ?? 'não preenchido';

//IF convencional
  if (nomeCompleto != null) {
    print(nomeCompleto!.toUpperCase());
  } else {
    print('nao preenchido');
  }

// Conditional property access
  print(nomeCompleto?.toUpperCase() ?? 'nao preenchido');
}
