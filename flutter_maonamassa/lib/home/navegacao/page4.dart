import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/home/navegacao/page1.dart';
import 'package:flutter_maonamassa/home/navegacao/page2.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pagina 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       settings: RouteSettings(name: 'page1'),
                //       builder: (context) => Page1(),
                //     ),
                //     ModalRoute.withName('page2'));

                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page1'),
                      builder: (context) => Page1(),
                    ),
                    (route) => route.isFirst);
              },
              child: Text('page 1 via page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/page1', ModalRoute.withName('/page2'));
              },
              child: Text('page 1 via named'),
            ),
          ],
        ),
      ),
    );
  }
}
