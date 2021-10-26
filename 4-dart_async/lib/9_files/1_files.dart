// ignore_for_file: file_names

import 'dart:io';

Future<void> main() async {
  var file = File('lib/9_files/files/file.txt');

//leitura sincrona
  // var fileData = file.readAsStringSync();
  // print(fileData);
//leitura assincrona
  // var fileData = await file.readAsString();
  // print(fileData);
//leitura linha assincrona
  // var fileLista = file.readAsLinesSync();
  // print(fileLista[2]);
//leitura linha sincrona
  // var fileLista = await file.readAsLines();
  // print(fileLista[1]);

  var file2 = File('lib/9_files/files/file2.txt');
  //assincrona
  // await file2.writeAsString('texto novo\n', mode: FileMode.append);
  //sincrona
  //file2.writeAsStringSync('texto novo\n', mode: FileMode.append);

  var listaNomes = ['lcuas', 'leidy', 'joao lucas'];
  var file3 = File('lib/9_files/files/file3.txt');
  var writeFile = file3.openWrite(
      mode: FileMode
          .append); //mode: FileMode.append nao deixa sobreescrever arquivo

  listaNomes.forEach((nome) => writeFile.write('$nome\n'));
}
