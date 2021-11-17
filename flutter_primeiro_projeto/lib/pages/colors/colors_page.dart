import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {

  const ColorsPage({ Key? key }) : super(key: key);
   @override
   Widget build(BuildContext context) {
// final cor =  Colors.blue.withOpacity(0.5);
// final cor =  Colors.blue;
// final cor =  Color.fromRGBO(23 , 89, 157, 1);
// final cor =  Color(0xFF17599D);
final cor =  Color(0xFF17599D).withOpacity(0.5);





       return Scaffold(
           appBar: AppBar(title: const Text('Cores'),),
           body: Center(
             child: Container(
               width: 400,
               height: 400,
               color: cor,
             ),
           ),
       );
  }
}