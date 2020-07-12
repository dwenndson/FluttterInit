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
          body: Column(
            children: <Widget>[
              Row(
                children: [
                  Name()
                ],
              ),
              Row(
                children: [
                  Name(),
                ]
              )
            ],
          )
      )
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.red,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text('Texto de Exemplo'),
          FlatButton(
            child: Text('Click Aqui'),
            
          )
        ],
      ),
    );
  }
}
