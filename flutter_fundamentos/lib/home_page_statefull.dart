import 'package:fluter_fundamentos/home_page.dart';
import 'package:flutter/material.dart';

//statefull tem o metodo create state e possui outra classe que controla o estado
//tenho uma classe principal que é adicionada na main eal estende statefull que obriga ter uma
//classe que estende state
//quando chamamos o setState marcamos o wigdet para ser rebuildade.
class HomePageStatefull extends StatefulWidget {
  HomePageStatefull() {
    print('HomePageStatefullState constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('create state');
    return _HomePageStatefullState();
  }
}

class _HomePageStatefullState extends State<HomePageStatefull> {
  String text = 'Estou no StatefullWidget';

  _HomePageStatefullState() {
    print('HomePageStatefullState constructor state');
  }

  @override
  void initState() {
    super.initState();
    text = 'texto alterado pelo initState';
    print('initState');

    //o metodo abaixo é a forma de enviar para outra pagina antes da pagina ser finalizada
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => HomePageStatelessWidget()));
    });
  }

  @override
  void didChangeDependencies() {
    print('didchange dependencies');
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text),
                TextButton(
                    onPressed: () {
                      setState(() {
                        text = 'alterei o texto do stateless';
                      });
                    },
                    child: Text('alterar texto'))
              ],
            ),
          )),
    );
  }
}
