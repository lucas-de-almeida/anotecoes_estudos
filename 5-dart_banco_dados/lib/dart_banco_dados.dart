import 'package:dart_banco_dados/database.dart';

void main() async {
  /**
   * criada a instancia do Database = variavel database
   * 
   * criada variavel mysqlConnection chamando o metodo database.openconnection
   * print do mysqlConnection.toString()
   */
  final database = Database();
  var mysqlConnection = await database.openConnection();

  print(mysqlConnection.toString());
}
