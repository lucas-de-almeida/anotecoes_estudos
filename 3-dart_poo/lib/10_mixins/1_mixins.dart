//são criados coma palavra reservada mixin

// ignore_for_file: file_names

import 'package:dart_poo/10_mixins/joao.dart';

void main() {
  //joao é um artista
  //joao é um cantar
  //joao é um dancar
  var joao = Joao();
  print(joao.habilidade());
  print(joao.cantar());
  print(joao.dancar());
}

// mixim da a possibilidade de dar herança multipla 
//mixim pode ser criado com a palavra reservada mixin
//tambem temos o mixim que é uma classe normal porem ele nao pode estender
//de nenhuma outra classe
//mixin pode sobrescrever metodos ja escritos
