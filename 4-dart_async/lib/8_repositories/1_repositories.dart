// ignore_for_file: file_names

import 'package:dart_async/8_repositories/repositories/cidade_repository.dart';
import 'package:dart_async/8_repositories/repositories/user_repository.dart';

void main() async {
  var cidadeRepository = CidadeRepository();

  var userRepository = UserRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();

    print(cidade);
    var user = await userRepository.finAllUser(10);
    print(user?.name ?? 'Usuario nao encontrado');
    // if (user != null) {
    //   print(user.name);
    // } else {
    //   print('usuario nao encontrado');
    // }
  } on Exception catch (e) {
    print('erro ao buscar cidade');
  }
}
