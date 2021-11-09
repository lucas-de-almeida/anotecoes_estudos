import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('altura ${mediaQuery.size.height}');
    print('largura ${mediaQuery.size.width}');
    print('orientação ${mediaQuery.orientation}');
    print('status bar  ${mediaQuery.padding.top}');
    print('tamanho appbar default  ${kToolbarHeight}');

    var tamanhoTela =
        mediaQuery.size.height - mediaQuery.padding.top - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('media query page'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            color: Colors.red,
            width: mediaQuery.size.width,
            height: tamanhoTela * .5,
          ),
        ],
      )),
    );
  }
}
