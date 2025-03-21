import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

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
  var pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto':'Preto', 'pontuacao':10},
        {'texto':'Vermelho', 'pontuacao':5},
        {'texto':'Verde', 'pontuacao':3},
        {'texto':'Branco','pontuacao':1}
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto':'Coelho', 'pontuacao':10},
        {'texto':'Cobra', 'pontuacao':5},
        {'texto':'Elefante', 'pontuacao':3},
        {'texto':'Leão','pontuacao':1}
      ],
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': [
        {'texto':'Maria', 'pontuacao': 10},
        {'texto':'João', 'pontuacao': 5},
        {'texto':'Leo', 'pontuacao': 3},
        {'texto':'Pedro','pontuacao': 1}
      ],
    },
  ];
  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
    print(pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Peguntas',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body:
            temPerguntaSelecionada
                ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder,
                )
                : Resultado(),
      ),
    );
  }
}
