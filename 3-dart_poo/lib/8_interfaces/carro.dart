//isso aqui é uma classe abstrata
//pois tem metodos implementados
abstract class CarroClasseAbstrata {
  void velocidadeMaxima() {}
}

//isso aqui é uma interface
//pois nao tem nenhum metodo implementado
abstract class Carro {
  // a plavra abstract na caracteristica força que o flho implemente aquela caracteristica
  //sem a necissidade de inicialização pelo pai
  abstract int portas;
  abstract int rodas;
  abstract String motor;
  int velocidadeMaxima();
}
