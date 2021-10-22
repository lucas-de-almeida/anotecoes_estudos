// ignore_for_file: file_names
// get e set faz sentido quando se tem uma logica de negocio para aplicar
void main(List<String> args) {
  var p1 = Pessoa();
  p1.nome = 'lucas de almeida';
}

class Pessoa {
  String? _nome;
  String? get nome => _nome;
  //set  nome(String? nome) => _nome = nome;// isso aqui nao faz sentido
  set nome(String? nome) {
    if (nome != null && nome.length > 3) {
      _nome = nome;
    }
  }
}
