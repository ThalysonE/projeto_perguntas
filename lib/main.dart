import 'package:flutter/material.dart';

void main(){
  runApp(PerguntaApp());
}
class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Peguntas'),
        ),
        body: Text('Teste'),
      ),
    );
  }
}