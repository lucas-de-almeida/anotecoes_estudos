// ignore_for_file: file_names

Future<void> main() async {
  print('inicio');
  final interval = Duration(milliseconds: 500);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream();

  stream = stream.take(10);

  stream.listen((event) {
    print('Listen1 value: $event');
  });
  stream.listen((event) {
    print('Listen2 value: $event');
  });

  print('fim');
}

int callback(int value) {
  print('callback o valor é $value');

  return (value + 1) * 2;
}
