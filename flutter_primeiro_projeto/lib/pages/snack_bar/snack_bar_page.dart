// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Usuario salvo com sucesso'),
                    backgroundColor: Colors.blue,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('simple snackbar')),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Usuario salvo com sucesso'),
                    backgroundColor: Colors.blue,
                    action: SnackBarAction(
                        label: 'desfazer',
                        textColor: Colors.black,
                        onPressed: () {
                          print('clicado');
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Action snackbar')),
          ],
        ),
      ),
    );
  }
}
