void main() {
  // o mapa é uma representação de chave e valor
  final paciente = <String, String>{
    'nome': 'lcuas de almeida',
    'curso': 'academia do flutter'
  };
//o mapa pode ser nulo mas se for criado deve conter a chave e o valor nao nullos
  Map<String, String>? pascienteNullSafety = null;
  //o mapa e o valor nao podem ser nulos mas a chave pode ser nula
  Map<String?, String> pascienteNullSafety2 = {
    null: 'lucas de almeida',
  };
  // o mapa e a chave nao podem ser nullos mas o valor pode ser nulo
  var pascienteNullSafety3 = <String, String?>{
    'curso': null,
  };

  var produtos = <String, String>{};
//cria uma chave com valor caso ela não exista
  produtos.putIfAbsent('nome', () => 'arroz');
  print(produtos);

  //caso tente  criar uma chave ja existente mesmo que com valor idferente a chave
  //nao sera criada
  produtos.putIfAbsent('nome', () => 'feijao');
  print(produtos);

  //para atualizar uma chave ja existente use update
  produtos.update('nome', (value) => 'feijao');
  print(produtos);

  //erro no update quando a chave nao existe
  //! produtos.update('preco', (value) => '8');
  // !print(produtos);

//para atualizar uma chave e caso ela nao exista cria-la use
  produtos.update('preco', (value) => '8', ifAbsent: () => '8');
  print(produtos);

  //recuperando valor
  print('produto ${produtos['nome']}');

  //varrendo todos itens
  produtos.forEach((key, value) {
    print('chave $key   $value');
  });
//para requisições assincronas use o for
  for (var entry in produtos.entries) {
    print('chave ${entry.key}   ${entry.value}');
  }

  //para pegar todas minhas chaves
  for (var key in produtos.keys) {
    print('chave: $key');
  }

  //para pegar todos meus valores
  for (var value in produtos.values) {
    print('valor: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_nova', value.toUpperCase());
  });
  print(novoMapaProdutos);

//exemplo de mapa com listas de mapas dentro
  var mapa = <String, Object>{
    'nome': 'Lucas de almeida',
    'cursos': [
      {
        'nome': 'academia do flutter',
        'descrição': 'melhor curso do brasil',
      },
      {
        'nome': 'arquiteto flutter',
        'descrição': 'meu futuro trabalho',
      }
    ]
  };

  mapa.forEach((key, value) {
    print('chave $key  valor $value');
  });
}
