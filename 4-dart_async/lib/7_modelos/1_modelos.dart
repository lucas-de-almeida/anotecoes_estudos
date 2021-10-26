// ignore_for_file: file_names

import 'dart:convert';

import 'package:dart_async/7_modelos/cidade.dart';
import 'package:http/http.dart';

void main() {
  buscarCep();
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/96835712/json/';
  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    // var responseData = jsonDecode(response.body);
    // if (responseData is Map) {
    //   print(responseData['cep']);
    //   print(responseData['logradouro']);
    //   print(responseData['localidade']);
    // }
    var cidade = Cidade.fromJson(response.body);
    print(cidade);
  }
}
