void main() {
  var lista = ['lucas'];
  print(lista);
  funcao(lista);
  print(lista);
  print(lista.hashCode);
}

void funcao(List<String> nomes) {
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
  void funcao2(String nomes) {
    nomes += 'academia do flutter';
    print(nomes.hashCode);
  }

  List<String> add(List<String> nomes) {
    var novoNome = [...nomes];
    novoNome.add('Lucas de almeida');
    print(novoNome);
    return novoNome;
  }
}
