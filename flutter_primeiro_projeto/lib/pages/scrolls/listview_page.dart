// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List view'),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.red,
              thickness: 5,
            );
          },
          itemCount: 10,
          itemBuilder: (context, index) {
            print('acessando $index');
            return ListTile(
              title: Text('o item $index'),
              subtitle: Text('flutter é top'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://flutter.dev/assets/images/dash/Dashatars.png'),
              ),
              trailing: CircleAvatar(),
            );
            //  ListView.builder(
            //   itemCount: 10,
            //   itemBuilder: (context, index) {
            //     print('acessando $index');
            //     return ListTile(
            //       title: Text('o item $index'),
            //       subtitle: Text('flutter é top'),
            //       leading: CircleAvatar(),
            //     );
            // Container(
            //   height: 300,
            //   child: Text('o item $index'),
            // );
          },
        ));
  }
}
