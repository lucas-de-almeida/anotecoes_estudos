// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum PoupupMenuPages {
  container,
  rows_columns,
  meida_query,
  botoes_rotacao,
  singlechildscrollview,
  list_view,
  dialogs,
  snackbars,
  forms,
  cidades,
  stack,
  stack2,
  bottomnavigatorbar,
  circleavatar,colors
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
              case PoupupMenuPages.dialogs:
                Navigator.of(context).pushNamed('/dialogs');

                break;
              case PoupupMenuPages.snackbars:
                Navigator.of(context).pushNamed('/snackbars');

                break;
              case PoupupMenuPages.forms:
                Navigator.of(context).pushNamed('/forms');

                break;
              case PoupupMenuPages.cidades:
                Navigator.of(context).pushNamed('/cidades');

                break;
              case PoupupMenuPages.stack:
                Navigator.of(context).pushNamed('/stack');

                break;
              case PoupupMenuPages.stack2:
                Navigator.of(context).pushNamed('/stack/stack2');

                break;
              case PoupupMenuPages.bottomnavigatorbar:
                Navigator.of(context).pushNamed('/bottomnavigatorbar');

                break;
              case PoupupMenuPages.circleavatar:
                Navigator.of(context).pushNamed('/circleavatar');

                break;
              case PoupupMenuPages.colors:
               
                Navigator.of(context).pushNamed('/colors');

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
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.dialogs,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Dialogs')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.snackbars,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('SnackBar')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.forms,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Formularios')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.cidades,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Cidades')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.stack,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Stack')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.stack2,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Stack 2')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.bottomnavigatorbar,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('BottomNavigator Bar')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.circleavatar,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Circle Avatar')),
              ),
              PopupMenuItem<PoupupMenuPages>(
                value: PoupupMenuPages.colors,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text('Colors')),
              ),
            ];
          }),
        ],
      ),
      body: Container(),
    );
  }
}
