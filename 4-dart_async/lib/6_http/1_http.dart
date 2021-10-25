// ignore_for_file: file_names
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

//? como fazer acesso a serviços com pacote hhttp podendo usar um alias 'as http'
//? da acesso a todos metodos http
//? se para uma url passando pelo rui.parse()
//? onde se manda um corpo body sempre vai por uma string por json e o retorno tbm
//? todos serviços são assincronos e preciso de um await o retorno vem por um response
//? pode-se verificar o status se esta na faixa de >=200 && < 299 se for sucesso retornara uma string
//? o apcote dart convert que disponibiliza o decode e o encode
//? decode tranforma uma string em um json um  item ou lista
//? caso ocorra um erro o mesmo esta descriminado no retorno response.reasonPhrase
//? podem ser enviados headers
void main() async {
  // await buscarCep();
  //await buscarCepErro();
  //await buscarPost();
  //await salvarPost();
  await atualizarPost();
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var mapaRequest = {
    'id': 1,
    'title': 'Post alterado',
    'body': 'Descrição do post',
    'userId': 1
  };
  var response = await http.put(Uri.parse(url),
      body: convert.jsonEncode(mapaRequest),
      headers: {'Content-type': 'application/json; charset=UTF-8'});
  print(response.statusCode);
  print(response.body);
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descrição do post',
    'userId': 1
  };
  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  print(response.statusCode);
  print(response.body);
}

Future<void> buscarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      for (var data in responseData) {
        print(data['id']);
      }
      //responseData.forEach((element) => print(element['id']));
    }
  }
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/96835712/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  }
}

Future<void> buscarCepErro() async {
  var url = 'https://viacep.com.br/ws/9683555712/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  } else {
    print(response.statusCode);
    // print(response.body);
    print(response.reasonPhrase);
    print('tem erro por favor verifique erro : ${response.reasonPhrase}');
  }
}
