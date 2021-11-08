import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  static final routeName = 'page1';
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pagina1'),
      ),
      body: Container(),
    );
  }
}
