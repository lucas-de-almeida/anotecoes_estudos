void main() {
  var pessoa = Pessoa()
    ..nome = 'lucas de almeida'
    ..email = 'lucasdealmeida@gmail.com'
    ..site = 'www.google.com';
  // pessoa.nome = 'Lucas de almeida';
  // pessoa.email = 'lucasdealmeidadev@gmail.com';
  // pessoa.site = 'lucasalmeida.com.br';

  var mapa = <String, String>{}
    ..putIfAbsent('nome', () => 'lucas de almeida')
    ..putIfAbsent('email', () => 'null')
    ..putIfAbsent('site', () => '');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;
}
