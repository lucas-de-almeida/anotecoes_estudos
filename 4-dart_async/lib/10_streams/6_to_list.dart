// ignore_for_file: file_names

Future<void> main() async {
  print('inicio');
  final interval = Duration(milliseconds: 500);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(10);
  final data = await stream.toList();
  print(data);
  print('fim');
}

int callback(int value) {
  print('callback o valor é $value');

  return (value + 1) * 2;
}
