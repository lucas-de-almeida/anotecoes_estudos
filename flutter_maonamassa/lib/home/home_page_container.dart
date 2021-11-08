// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePageContainer'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  offset: Offset(10, 10),
                ),
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 20,
                  offset: Offset(-10, -10),
                ),
              ]),
        ),
      ),
    );
  }
}
