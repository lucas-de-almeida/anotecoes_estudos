import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) {
                      return DialogCustom(context);
                    });
              },
              child: Text('Dialog')),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text('Simple dialog'),
                        contentPadding: EdgeInsets.all(10),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('TituloX'),
                          ),
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text('Fechar Dialog'))
                        ],
                      );
                    });
              },
              child: Text('Simple Dialog')),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('alert dialog'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Deseja realmente salvar ?'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Confirmar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Alert Dialog')),
          ElevatedButton(
              onPressed: () async {
                var hora = await showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                print('${hora?.hour}:${hora?.minute}');
              },
              child: Text('Time Picker')),
          ElevatedButton(
              onPressed: () async {
             var dataSelecionada= await  showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                print(dataSelecionada);
              },
              child: Text('Date Picker')),
               ElevatedButton(
              onPressed: () async {
              showAboutDialog(context: context,applicationIcon: Icon(Icons.flutter_dash));
              },
              child: Text('About Dialog')),
        ],
      )),
    );
  }
}
