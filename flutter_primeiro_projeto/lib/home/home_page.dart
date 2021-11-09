// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum PoupupMenuPages { container }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PoupupMenuPages>(
              onSelected: (PoupupMenuPages valueSelected) {
            switch (valueSelected) {
              case PoupupMenuPages.container:
                Navigator.of(context).pushNamed('/container');

                break;
            }
          }, itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PoupupMenuPages>>[
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.container,
                child: Text('Container'),
              ),
            ];
          }),
        ],
      ),
      body: Container(),
    );
  }
}
