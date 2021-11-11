import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single child Scroll view'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.black,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.blueAccent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.deepPurple,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
