import 'dart:convert';

import 'package:desafio_final_dart/models/cidade.dart';
import 'package:http/http.dart';

late List<Cidade> listaCidade;

late List<Cidade> mockListCidade;

class CidadeRepository {
  Future<List<Cidade>> mockBuscaCidade(int id) async {
    return mockListCidade = [
      Cidade(nome: 'porto alegre'),
      Cidade(nome: 'santacruz do sul'),
      Cidade(nome: 'são leopoldo'),
      Cidade(nome: 'adamantina'),
      Cidade(nome: 'adamantina'),
      Cidade(nome: 'adamantina'),
      Cidade(nome: 'adamantina'),
      Cidade(nome: 'adamantina'),
    ];
  }

  Future<List<Cidade>> buscaCidade(int id) async {
    var url =
        'https://servicodados.ibge.gov.br/api/v1/localidades/estados/$id/distritos';
    var response = await get(Uri.parse(url));
    listaCidade = [];

    if (response.statusCode == 200) {
      List lista = jsonDecode(response.body);
      if (lista is List) {
        for (var cidade in lista) {
          listaCidade.add(Cidade.fromMap(cidade));
        }
      }

      return listaCidade;
    } else {
      throw Exception();
    }
  }
}
