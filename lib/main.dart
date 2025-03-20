import 'package:flutter/material.dart';
import 'package:projeto_perguntas/quest%C3%A3o.dart';
import 'package:projeto_perguntas/resposta.dart';

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

  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];
  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        temPerguntaSelecionada
            ? _perguntas[_perguntaSelecionada].cast()['respostas']
            : [];

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
                ? Column(
                  children: [
                    Questao(
                      _perguntas[_perguntaSelecionada]['texto'].toString(),
                    ),
                    ...respostas
                        .map(
                          (resp) =>
                              Resposta(resposta: resp, onSelecao: _responder),
                        )
                        .toList(),
                  ],
                )
                : null,
      ),
    );
  }
}
