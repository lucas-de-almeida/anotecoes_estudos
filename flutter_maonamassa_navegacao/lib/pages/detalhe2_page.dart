import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {
  const Detalhe2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detalhe 2'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pop('parametro retornado pela tela detalhe2Page');
            },
            child: Text('voltar')),
      ),
    );
  }
}
