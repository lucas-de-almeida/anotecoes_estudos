// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = '';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final senhaEC = TextEditingController();
  String categoria = 'Categoria 1';

  @override
  void dispose() {
    nameEC.dispose();
    senhaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Formularios'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // TextField(
                  //   onChanged: (String valor) {
                  //     setState(() {
                  // print('texto antes do valor $texto');
                  //       texto = valor;
                  // print('alterou valor $valor');
                  // print('texto depois do valor $texto');
                  //     });
                  //   },
                  // ),
                  //TextFormField()
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // Text('o texto digitado foi $texto')

                  TextFormField(
                    controller: nameEC,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Nome completo',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.amberAccent,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                      isDense: true,
                    ),
                    validator: (String? valor) {
                      if (valor == null || valor.isEmpty) {
                        return 'Campo X nao preenchido';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: senhaEC,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    // maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.amberAccent,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                      isDense: true,
                    ),
                    validator: (String? valor) {
                      if (valor == null || valor.isEmpty) {
                        return 'Campo X nao preenchido';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField<String>(
                    value: categoria,
                    elevation: 16,
                    decoration: InputDecoration(
                        labelText: 'Categoria',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.amberAccent,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        )),
                    icon: Icon(Icons.ac_unit),
                    isDense: true,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'categoria nao preenchida';
                      }
                    },
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          categoria = newValue;
                          print(categoria);
                        });
                      }
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text('categoria 1'),
                        value: 'Categoria 1',
                      ),
                      DropdownMenuItem(
                        child: Text('categoria 2'),
                        value: 'Categoria 2',
                      ),
                      DropdownMenuItem(
                        child: Text('categoria 3'),
                        value: 'Categoria 3',
                      ),
                    ],
                  ),
                  // TextFormField(
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   validator: (String? valor) {
                  //     if (valor == null || valor.isEmpty) {
                  //       return 'Campo X nao preenchido';
                  //     }
                  //   },
                  // ),
                  ElevatedButton(
                      onPressed: () {
                        var formValid =
                            formKey.currentState?.validate() ?? false;
                        var message = 'Formulario invalido';
                        if (formValid) {
                          message = 'Formulario valido (Name: ${nameEC.text})';
                        }
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(message)));
                      },
                      child: Text('salvar'))
                ],
              ),
            ),
          ),
        ));
  }
}
