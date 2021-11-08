// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Center(child: Text('drawer aberto')),
        ),
        appBar: AppBar(
          title: Text('nossa app bar'),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ac_unit),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ac_unit),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ac_unit),
            )
          ],
        ),
        endDrawer: Drawer(
          child: Center(child: Text('drawer aberto')),
        ),
        body: Center(child: Text('nossa home page')));
  }
}
