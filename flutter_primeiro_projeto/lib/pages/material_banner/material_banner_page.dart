// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final materialbanner = MaterialBanner(
                    content: Text('Usuario salvo com sucesso'),
                    backgroundColor: Colors.amber,
                    forceActionsBelow: true,
                    actions: [
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: Text('Cancelar'))
                    ],
                  );
                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(materialbanner);
                  Future.delayed(Duration(seconds: 2), () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  });
                },
                child: Text('material banner')),
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
