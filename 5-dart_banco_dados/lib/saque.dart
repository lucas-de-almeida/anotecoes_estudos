import 'package:dart_banco_dados/database.dart';

void main() async {
  var database = Database();
  var conn = await database.openConnection();

// a transaction executa no banco porem mantem as alterações em uma tabela temporaria
// nao visivel caso tudo ocorra de forma certa ele executa um comando commit
//alterando as tabelas necessarias
//durante a transction o banco locka a linha para que ninguem altere ela
  await conn.transaction((_) async {
    //puxa o todos os saldos da conta
    var result = await conn.query('select * from conta_corrente');
    //atribui o primeiro saldo da lista a variavel saldo
    var saldo = result.first['saldo'] as double;
    //cria um valor de saque = 100
    double saque = 100;
// faz um update na tabela conta_corrente onde saldo de id =1
// sera atualizado para o valor saldo menos saque
    conn.query('update conta_corrente set saldo = ? where id=?', [
      saldo - saque,
      1,
    ]);
//insere na tabela tira_dinheiro  a data de quando foi feito saque
    await conn.query('insert into tira_dinheiro(id,data_saque) values(?,?)', [
      null,
      DateTime.now().toIso8601String(),
    ]);

    //qualquer excessão que ocorra aqui dentro invalida toda as operações acima
  });
// seleciona todos itens da tabela conta_corrente adiciona a variavel result
  var result = await conn.query('select * from conta_corrente');
  //printa o primeiro item da lista
  print('meu saldo é : ${result.first['saldo']}');
}
