import 'package:mysql1/mysql1.dart';

class Database {
  /**
   * criada a classe database 
   * criado metodo openConnection
   * criado variavel settings que é uma ConnectionSettings
   * passando as configurações para conecção com banco de dados
   * 
   */
  Future<MySqlConnection> openConnection() async {
    final settings = ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: 'Leidi262632!',
        db: 'dart_mysql');
    return MySqlConnection.connect(settings);
  }
}
