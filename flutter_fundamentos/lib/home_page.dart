import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//stateless é um componente estatico por siso nao tem a capacidade de se alterar
// nao tem controle de estado
class HomePageStatelessWidget extends StatelessWidget {
  String text = 'Estou no StatelessWidget';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(text),
            TextButton(
                onPressed: () {
                  text = 'alterei o texto do stateless';
                },
                child: Text('alterar texto'))
          ],
        ));
  }
}
