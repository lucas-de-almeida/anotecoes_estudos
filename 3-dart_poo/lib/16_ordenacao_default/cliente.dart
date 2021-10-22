class Cliente implements Comparable<Cliente> {
  String nome;
  String telefone;
  Cliente({
    required this.nome,
    required this.telefone,
  });

  @override
  String toString() => 'Cliente(nome: $nome)';

  @override
  int compareTo(Cliente other) {
    print('meu sort');
    return nome.compareTo(other.nome);
  }
}
