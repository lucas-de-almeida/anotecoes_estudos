// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/home/navegacao/home_page.dart';
import 'package:flutter_maonamassa/home/navegacao/page1.dart';
import 'package:flutter_maonamassa/home/navegacao/page2.dart';
import 'package:flutter_maonamassa/home/navegacao/page3.dart';
import 'package:flutter_maonamassa/home/navegacao/page4.dart';
import 'package:flutter_maonamassa/home/navegacao_params/detalhe.dart';
import 'package:flutter_maonamassa/home/navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/navegacao_param',
      routes: {
        '/': (_) => HomePage(),
        '/page1': (_) => Page1(),
        Page2.routeName: (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
        '/navegacao_param': (_) => Lista(),
        '/detalhe': (_) => Detalhe(),
      },
    );
  }
}
