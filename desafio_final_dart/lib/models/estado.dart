import 'dart:convert';

class Estado {
  int id;
  String sigla;
  String nome;
  Estado({
    required this.id,
    required this.sigla,
    required this.nome,
  });

  @override
  String toString() => 'Estado(id: $id, sigla: $sigla, nome: $nome)';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sigla': sigla,
      'nome': nome,
    };
  }

  factory Estado.fromMap(Map<String, dynamic> map) {
    return Estado(
      id: map['id'],
      sigla: map['sigla'],
      nome: map['nome'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Estado.fromJson(String source) => Estado.fromMap(json.decode(source));
}
