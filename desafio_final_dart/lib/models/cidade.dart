import 'dart:convert';

class Cidade {
  String nome;
  Cidade({
    required this.nome,
  });

  @override
  String toString() => 'Cidade(nome: $nome)';

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      nome: map['nome'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source));
}
