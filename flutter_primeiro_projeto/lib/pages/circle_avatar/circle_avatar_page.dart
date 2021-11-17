// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Circle Avatar'),
        ),
        body: Row(children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //         'https://i0.wp.com/cloud.estacaonerd.com/wp-content/uploads/2020/05/09153450/goku3.jpg?fit=1200%2C630&ssl=1'),
          //   ),
          // ),
          ImageAvatar(
            urlImage:
                'https://i0.wp.com/cloud.estacaonerd.com/wp-content/uploads/2020/05/09153450/goku3.jpg?fit=1200%2C630&ssl=1',
          ),
          SizedBox(
            width: 10,
          ),
          ImageAvatar(
            urlImage:
                'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/a49b9d13d175d69ab9173541969ef27f7517584a4d08802ff755a5e5c0b0c435._RI_V_TTW_.png',
          ),
        ]));
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.black,
            ], begin: Alignment.topCenter),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Container(
            width: 100,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(urlImage),
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.all(5),
              child: Text(
                'Ao vivo',
                style: TextStyle(fontSize: 9),
              ),
            ),
          ),
        )
      ],
    );
  }
}
