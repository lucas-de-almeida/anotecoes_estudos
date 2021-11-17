// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page1.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page2.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page3.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Pagina 1',
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            label: 'Pagina 2',
            icon: Icon(Icons.account_circle_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Pagina 3',
            icon: Icon(Icons.account_box),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Bottom navigator bar'),
      ),
      body: IndexedStack(
        index: indice,
        children: [Page1(), Page2(), Page3()],
      ),
    );
  }
}
