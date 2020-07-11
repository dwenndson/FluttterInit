import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Meu PrimeiroAPP'),
          ),
          body: Center(
              child: Column(
            children: <Widget>[
              Text('Click no botão a baixo:'),
              FlatButton(
                child: Text('Click Aqui'),
                onPressed: botaoAction,
                color: Colors.blueAccent,
              )
            ],
          ))),
    );
  }

  botaoAction() {
    print("Clickou no botão");
  }
}
