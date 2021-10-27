// ignore_for_file: file_names

Future<void> main() async {
  print('inicio');
  final interval = Duration(milliseconds: 500);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skip(1);

// await for
  await for (var i in stream) {
    print('o numero que chegou no await for $i');
  }
  print('fim');
}

int callback(int value) {
  print('callback o valor é $value');

  return (value + 1) * 2;
}
