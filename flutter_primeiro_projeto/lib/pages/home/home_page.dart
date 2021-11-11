// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum PoupupMenuPages {
  container,
  rows_columns,
  meida_query,
  botoes_rotacao,
  singlechildscrollview,
  list_view
}

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
              case PoupupMenuPages.botoes_rotacao:
                Navigator.of(context).pushNamed('/botoes_rotacao');

                break;
              case PoupupMenuPages.singlechildscrollview:
                Navigator.of(context)
                    .pushNamed('/scrolls/singlechildscrollview');

                break;
              case PoupupMenuPages.list_view:
                Navigator.of(context).pushNamed('/scrolls/list_view');

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
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.botoes_rotacao,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Botoes Rotação')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.singlechildscrollview,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('single child scroll')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.list_view,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('list view')),
              ),
            ];
          }),
        ],
      ),
      body: Container(),
    );
  }
}
