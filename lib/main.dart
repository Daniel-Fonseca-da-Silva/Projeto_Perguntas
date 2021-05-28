import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';

main() => runApp(new PerguntaApp()); // Inícia a aplicação

// Classe privada que gerencia o estado
class _PerguntaAppState extends State<PerguntaApp> {
  // Variável privada
  var _perguntaSelecionada = 0;

  // Lista privada
  final _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Peixe', 'Cobra', 'Ave', 'Gato']
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Nikolai', 'Irina', 'Pietro', 'Will']
    }
  ];

  // Metódo privado
  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  // Metódo de validação
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  // Metódo build
  @override // <- Sobrescrevendo o método build
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [''];

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: <Widget>[
                  Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : Resultado(),
      ),
    );
  }
}

// Classe
class PerguntaApp extends StatefulWidget {
  // Metódo privado para criar estado
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
