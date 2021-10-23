// ignore_for_file: file_names

void main() {
  print('iniciou processo');
  m2();
  p2();
  var i = 0;
  while (i < 5) {
    i++;
    print(i);
  }
  print('finalizou');
}

void p2() {
  Future.delayed(Duration(seconds: 2), () {
    print('finalizando async');
  });
}

void m2() {
  print('função 2');
}
