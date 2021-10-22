import 'dart:mirrors';

import 'package:dart_poo/20_metadatas/fazer.dart';
import 'package:dart_poo/20_metadatas/pessoa.dart';

void main() {
  final p1 = Pessoa();
  var instanceMirror = reflect(p1);

  ClassMirror classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    print('class');
    if (instanceAnnotation is Fazer) {
      print(instanceAnnotation.quem);
      print(instanceAnnotation.oque);
    }
  });

  classMirror.declarations.values.forEach((declarationMirror) {
    if (declarationMirror is VariableMirror) {
      declarationMirror.metadata.forEach((annottation) {
        var instanceAnnotation = annottation.reflectee;
        print('variaveis');
        if (instanceAnnotation is Fazer) {
          print(instanceAnnotation.quem);
          print(instanceAnnotation.oque);
        }
      });
    } else if (declarationMirror is MethodMirror) {
      declarationMirror.metadata.forEach((annottation) {
        var instanceAnnotation = annottation.reflectee;
        print('metodo');
        if (instanceAnnotation is Fazer) {
          print(instanceAnnotation.quem);
          print(instanceAnnotation.oque);
        }
      });
    }
  });
}
