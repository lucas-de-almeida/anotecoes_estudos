// ignore_for_file: file_names

Future<void> main() async {
  print('inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);
// await for
  await for (var i in stream) {
    print(i);
  }
  print('fim');
}

int callback(int value) {
  print('o valor é $value');

  return (value + 1) * 2;
}
