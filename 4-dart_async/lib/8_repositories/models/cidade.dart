import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;
  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });
// recebe um mapa e transforma em uma cidade no nosso modelo em questao
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }
  //recebe um source que é um json como string e transforma em uma cidade
  // fazendo o jsondecode decodificando para um  mapa de chave e valor
  //depois chama o metodo from map que transforma um map no objeto e questao

  // factory Cidade.fromJson(String source) {
  //   var jsonMap = jsonDecode(source);
  //   return Cidade.fromMap(jsonMap);
  // }
  //o codigo acima faz o mesmo que a linha abaixo

  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));
// pega a instancia e transforma em um mapa de chave e valor
  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      "logradouro": logradouro,
      "complemento": complemento,
      "bairro": bairro,
      "localidade": localidade,
      "uf": uf,
      "ddd": ddd,
    };
  }

//pega a instancia transforma em um mapa e decodifica ela para um json
  String toJson() => jsonEncode(toMap());

/**
 * 
 * {
  "cep": "96835-712",
  "logradouro": "Rua Victor Frederico Baumhardt",
  "complemento": "até 1200 - lado par",
  "bairro": "Rauber",
  "localidade": "Santa Cruz do Sul",
  "uf": "RS",
  "ibge": "4316808",
  "gia": "",
  "ddd": "51",
  "siafi": "8839"
}
 */

  @override
  String toString() {
    return 'Cidade(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}
