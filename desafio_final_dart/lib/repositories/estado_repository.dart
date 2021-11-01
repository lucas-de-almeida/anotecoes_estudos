import 'dart:convert';

import 'package:desafio_final_dart/models/estado.dart';
import 'package:http/http.dart';

late List<Estado> estados;

class EstadoRepository {
  Future<List<Estado>> buscarEstados() async {
    var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
    var response = await get(Uri.parse(url));
    estados = [];
    if (response.statusCode == 200) {
      List lista = jsonDecode(response.body);
      if (lista is List) {
        for (var estado in lista) {
          estados.add(Estado.fromMap(estado));
        }
      }

      return estados;
    } else {
      throw Exception();
    }
  }
}
