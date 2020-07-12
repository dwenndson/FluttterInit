import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

// ignore: must_be_immutable
class MeuApp extends StatelessWidget {
  var textStyle =
      TextStyle(fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Meu PrimeiroAPP'),
          ),
          body: Column(
            children: <Widget>[
              Name(
                title: 'Texto 1',
                onPress: () {
                  print('clicou no item 1');
                },
              ),
              Name(
                title: 'Texto 2',
                onPress: () {
                  print('clicou no item 2');
                },
              )
            ],
          )),
    );
  }
}

class Name extends StatelessWidget {
  Name({
    //required obriga sempre passar os valores para os parametros
    @required this.title,
    @required this.onPress});

  var title;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.red[200],
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(this.title),
          FlatButton(
            color: Colors.green,
            child: Text('Click Aqui'),
            onPressed: this.onPress,
          )
        ],
      ),
    );
  }
}
