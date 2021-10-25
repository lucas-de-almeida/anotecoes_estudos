// ignore_for_file: file_names

//void main é uma micro task tem prioridade na excecussão
//quando se coloca await o programa respeita os await aguarda finalização de excecussão
import 'dart:async';

Future<void> main() async {
  print('incio main');
  scheduleMicrotask(() => print('microtask 1'));
  await Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  await Future(() => print('Future #2 '));
  await Future(() => print('Future #3 '));

  scheduleMicrotask(() => print('microtask 2'));

  print('fim main');
}
