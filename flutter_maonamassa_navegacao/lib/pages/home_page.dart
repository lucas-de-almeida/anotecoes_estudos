// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'Parametro X');
              },
              child: Text('Ir para detalhes'),
            ),
            TextButton(
              onPressed: () async {
                var message =
                    await Navigator.of(context).pushNamed('/detalhe2');
                print('mensagem recebida da pagina $message');
              },
              child: Text('Ir para detalhes2 e aguardar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  settings: RouteSettings(
                    name: '/detalhe',
                    //arguments: 'Parametro peli page route'
                  ),
                  builder: (_) => DetalhePage(
                    parametro: 'Parametro pelo page route',
                  ),
                ));
              },
              child: Text('Ir para detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
