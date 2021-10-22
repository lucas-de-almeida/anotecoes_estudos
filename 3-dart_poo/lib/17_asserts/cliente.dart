class Cliente {
  String? nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;
  Cliente({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
  })  : assert(nome != null, 'Nome nao pode ser nulo'),
        assert(cpf != null, 'CPF nao pode ser nullo');
}
