// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePageFonts extends StatelessWidget {
  const HomePageFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(child: Text('drawer aberto')),
      ),
      appBar: AppBar(
        title: Text(
          'nossa app ba',
          style: TextStyle(fontFamily: 'Tourney'),
        ),
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
      body: Center(
        child: Text(
          'nossa home page',
          style: TextStyle(
              fontFamily: 'Tourney', color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
