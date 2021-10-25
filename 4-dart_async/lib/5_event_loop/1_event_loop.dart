// ignore_for_file: file_names

//vid main é uma kicro task tem prioridade na excecussão
import 'dart:async';

void main() {
  print('incio main');
  scheduleMicrotask(() => print('microtask 1'));
  Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  Future(() => print('Future #2 '));
  Future(() => print('Future #3 '));

  scheduleMicrotask(() => print('microtask 2'));

  print('fim main');
}

/**
 *Event
 *Future.delayed - 1 inciar
 *future #2 -executou
 *future #3 -executou
 *Future.delayed- finalizou
 */



/**
 * MicroTask
 * main-ok
 * microtask #1 -ok
 * microtask #2 -ok
*/



