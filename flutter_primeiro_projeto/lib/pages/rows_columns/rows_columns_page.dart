import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows Columns'),
      ),
      body: Container(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('elemento 1'),
            Text('elemento 2'),
            Text('elemento 3'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(' 3'),
              Text(' 3'),
              Text(' 3'),
            ])
          ],
        ),
      ),
    );
  }
}
