void main() {
  // ? = Nullable (aceita nulo)
  //Sem nada (padrão) = no-null (não aceita nullo)

  //não aceita pode ser nulo
  var nomes = <String>[];

  //aceita nulo
  List<String>? nomesNulos;

// !Lista nem itens internos naopodem ser nulos
  List<String> nomesIntenosNaoAceitaNulos = ['Rodrigo'];

// Lista nao pode ser nula mas os itens internos podem ser nulos
  List<String?> nomesIntenosAceitaNulos = ['Rodrigo', null, 'Rahman', null];
  var nomesIntenosAceitaNulos2 = <String?>['Rodrigo', null, 'Rahman', null];
// Lista  pode ser nula mas os itens internos podem ser nulos

  List<String?>? nomesIntenosAceitaNulos1 = ['Rodrigo', null, 'Rahman', null];
}
