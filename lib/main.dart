import 'package:flutter/material.dart';
import 'package:projeto_perguntas/quest%C3%A3o.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Peguntas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(onPressed: _responder, child: Text('Opcao 1')),
            ElevatedButton(onPressed: _responder, child: Text('Opcao 2')),
            ElevatedButton(onPressed: _responder, child: Text('Opcao 3')),
          ],
        ),
      ),
    );
  }
}
