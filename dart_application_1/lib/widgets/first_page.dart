import 'dart:ui';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String nome = "";
    return Scaffold(
      appBar: AppBar(title: Text('Primeira Página')),
      body: Center(
          child: Column(
        children: [
          TextField(
              decoration: InputDecoration(
                  hintText: 'Digite seu nome', label: Text("Nome: ")),
              onChanged: (String value) {
                nome = value;
              }),
          ElevatedButton(
              onPressed: () {
                minhaPrimeiraFuncao(context, nome);
              },
              child: Text("Ok"))
        ],
      )),
    );
  } //
}

void minhaPrimeiraFuncao(BuildContext context, String nome) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Nome:'),
          content: Text(nome),
        );
      });
}
