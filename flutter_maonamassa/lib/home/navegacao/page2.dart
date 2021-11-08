import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/home/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  static final String routeName = '/page2';
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pagina2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page3()));
              },
              child: Text('page 3 via page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              },
              child: Text('page 3 via named'),
            ),
          ],
        ),
      ),
    );
  }
}
