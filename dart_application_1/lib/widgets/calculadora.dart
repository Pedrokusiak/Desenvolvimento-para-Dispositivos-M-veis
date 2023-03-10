import 'dart:html';

import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  double num1 = 0;
  double num2 = 0;
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora')),
      body: Center(
          child: Column(
        children: [
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Primeiro Número: ',
                  label: Text("Primeiro Número: ")),
              onChanged: (String value) {
                num1 = double.parse(value);
              }),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Segundo Número: ',
                  label: Text("Segundo Número: ")),
              onChanged: (String value) {
                num2 = double.parse(value);
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    resultado = num1 + num2;
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Resultado:'),
                            content: Text(resultado.toString()),
                          );
                        });
                  },
                  child: Text("Somar")),
              ElevatedButton(
                  onPressed: () {
                    resultado = num1 * num2;
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Resultado:'),
                            content: Text(resultado.toString()),
                          );
                        });
                  },
                  child: Text("Multiplicar")),
            ],
          )
        ],
      )),
    );
  }
}
