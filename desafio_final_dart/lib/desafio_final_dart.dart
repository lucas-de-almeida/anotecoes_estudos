import 'package:desafio_final_dart/database/database.dart';
import 'package:desafio_final_dart/repositories/cidade_repository.dart';
import 'package:desafio_final_dart/repositories/estado_repository.dart';

void main() async {
  var database = Database();
  var conn = await database.openConnection();

  var estadoRepository = EstadoRepository();
  var cidadeRepository = CidadeRepository();

  var listaEstados = await estadoRepository.buscarEstados();

  for (var estado in listaEstados) {
    var listaCidades = await cidadeRepository.buscaCidade(estado.id);
    await conn.query('insert into estado(id,uf,nome) values(?,?,?)',
        [estado.id, estado.sigla, estado.nome]);
    for (var cidade in listaCidades) {
      //  print(cidade);
      await conn.query('insert into cidade(id,id_uf,nome) values(?,?,?)', [
        null,
        estado.id,
        cidade.nome,
      ]);
    }

    //print(estado);
  }
}
