// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePageImagem extends StatelessWidget {
  const HomePageImagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text('imagem'),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Column(
          children: [
            // Container(
            //   width: 200,
            //   height: 200,
            //   child: Image.asset(
            //     'assets/images/download.jpeg',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Container(
              width: 300,
              height: 250,
              child: Center(
                child: Text(
                  'Universo',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 20,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/download.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                'http://midia.gruposinos.com.br/_midias/jpg/2015/08/11/andromeda_galaxy_2-981925.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
