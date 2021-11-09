// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum PoupupMenuPages { container, rows_columns, meida_query }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PoupupMenuPages>(
              onSelected: (PoupupMenuPages valueSelected) {
            switch (valueSelected) {
              case PoupupMenuPages.container:
                Navigator.of(context).pushNamed('/container');

                break;
              case PoupupMenuPages.rows_columns:
                Navigator.of(context).pushNamed('/rows_columns');

                break;
              case PoupupMenuPages.meida_query:
                Navigator.of(context).pushNamed('/media_query');

                break;
            }
          }, itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PoupupMenuPages>>[
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.container,
                child: Text('Container'),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.rows_columns,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Rows & Columns')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.meida_query,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Media Query')),
              ),
            ];
          }),
        ],
      ),
      body: Container(),
    );
  }
}
