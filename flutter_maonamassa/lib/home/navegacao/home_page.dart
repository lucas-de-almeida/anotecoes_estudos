import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/home/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home age'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    settings: RouteSettings(name: 'page2'),
                    builder: (context) => Page2()));
              },
              child: Text('page 2 via page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: Text('page 2 via named'),
            ),
          ],
        ),
      ),
    );
  }
}
