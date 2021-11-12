
import 'package:flutter/material.dart';

class DialogCustom extends Dialog{
  DialogCustom(BuildContext context) :super(
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

    child: Container(
      width: 300,
      height: 300,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('TituloX'),
        ),
        TextButton(onPressed: ()=>Navigator.of(context).pop(), child: Text('Fechar Dialog'))
      ],),
    )
  );
}
// class DialogCustomIos extends CupertinoDialog{
//   DialogCustomIos(BuildContext context) :super(
//       shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

//     child: Container(
//       width: 300,
//       height: 300,
//       child: Column(children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text('TituloX'),
//         ),
//         TextButton(onPressed: ()=>Navigator.of(context).pop(), child: Text('Fechar Dialog'))
//       ],),
//     )
//   );
// }