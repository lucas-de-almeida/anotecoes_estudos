// ignore_for_file: slash_for_doc_comments

/**
   * criada a instancia do Database = variavel database
   * 
   * criada variavel mysqlConnection chamando o metodo database.openconnection
   * print do mysqlConnection.toString()
   */
import 'package:dart_banco_dados/database.dart';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  final database = Database();
  var mysqlConnection = await database.openConnection();
// inserção de dados

  // print(mysqlConnection.toString());
  // var resultado = await mysqlConnection.query(
  //   'insert into aluno(id, nome) values(?,?)',
  //   [
  //     null,
  //     'lucas de almeida',
  //   ],
  // );
  // // print(resultado.affectedRows);
//busca todos os dados da tabela alunos e lista por ordem na lista
//ou por nome da coluna
  var resultSelect = await mysqlConnection.query('select * from aluno');
  resultSelect.forEach((element) {
    print('resultado por indice');
    print(element[0]);
    print(element[1]);

    print('resultado por nome da coluna');
    print(element['id']);
    print(element['nome']);
  });

//faz um update na tabela aluno onde se passam o nome que vai ser alterado
//e o id para identificação
//ao passar o nome e id foi invertido a ordem para gerar um erro proposital
  try {
    await mysqlConnection
        .query('update aluno set nome=? where id = ?', [2, 'leidy']);
  } on MySqlException catch (e) {
    print('Erro ao fazer a atualização');
  }
//faz um update na tabela aluno onde se passam o nome que vai ser alterado
//e o id para identificação
  try {
    await mysqlConnection
        .query('update aluno set nome=? where id = ?', ['leidy', 2]);
  } on MySqlException catch (e) {
    print('Erro ao fazer a atualização');
  }
//faz uma busca de todos itens cadastrados na tabela alunos ondem o id corresponda a 2
//protegido por um if caso nao retorne nada
  var resultadoSelecUnico =
      await mysqlConnection.query('select * from aluno where id = ?', [2]);
  print('parametro unico');
  if (resultadoSelecUnico.isNotEmpty) {
    var unico = resultadoSelecUnico.first;
    print(unico['id']);
    print(unico['nome']);
  }
//transaction podemos abrir uma transação
//comitar - efetivar a transação
//roolback- desfazer o que foi feito
  await mysqlConnection.transaction((conn) {});
}
