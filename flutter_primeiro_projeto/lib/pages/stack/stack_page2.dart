// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'http://midia.gruposinos.com.br/_midias/jpg/2015/08/11/andromeda_galaxy_2-981925.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.white54,
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 12,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Universo',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        'Universo Universo Universo Universo Universo UniversoUniverso Universo UniversoUniverso Universo Universo Universo Universo UniversoUniverso Universo Universo'),
                  ),
                ])),
          )
        ],
      ),
    );
  }
}
