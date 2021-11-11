// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BotoesRotacao extends StatelessWidget {
  const BotoesRotacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botoes e rotação'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text('lucas de almeida'),
                  ),
                ),
                Icon(Icons.ac_unit)
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(5),
                minimumSize: Size(50, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.blue,
                primary: Colors.red,
                padding: EdgeInsets.all(10),
                minimumSize: Size(50, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text('Salvar'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.catching_pokemon),
              label: Text('Pokemon'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.orange),
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Size(120, 50);
                  } else if (states.contains(MaterialState.hovered)) {
                    return Size(200, 200);
                  }
                }),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.pink;
                    }
                    return Colors.amber;
                  },
                ),
              ),
              onPressed: () {},
              child: Text('Salvar'),
            ),
            InkWell(
              onTap: () {},
              child: Text('Inkwell'),
            ),
            GestureDetector(
              child: Text('Gesture detector'),
              onTap: () {
                print('gesture clicado');
              },
              onVerticalDragStart: (_) {
                print('Start $_');
              },
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, offset: Offset(0, 5), color: Colors.red),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Center(
                  child: Text('Botao Salvar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
