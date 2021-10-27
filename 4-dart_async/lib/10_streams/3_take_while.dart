// ignore_for_file: file_names

Future<void> main() async {
  print('inicio');
  final interval = Duration(milliseconds: 500);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.takeWhile((int numero) {
    print('o numero que chegou no takeWhile é $numero');
    return numero <= 10;
  });

// await for
  await for (var i in stream) {
    print('o numero que chegou no await for $i');
    print(i);
  }
  print('fim');
}

int callback(int value) {
  print('o valor é $value');

  return (value + 1) * 2;
}
