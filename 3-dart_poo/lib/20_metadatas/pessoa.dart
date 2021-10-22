import 'package:dart_poo/20_metadatas/fazer.dart';

@Fazer(
  quem: 'pessoa',
  oque: 'alguma coisa',
)
class Pessoa {
  @Fazer(
    quem: 'pessoa no atributo',
    oque: 'alguma coisa dentro da classe',
  )
  String? nome;

  @Fazer(
    quem: 'pessoa no metodo',
    oque: 'alguma coisa dentro do metodo',
  )
  void fazerAlgo() {}
}
