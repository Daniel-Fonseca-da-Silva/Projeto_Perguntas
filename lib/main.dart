import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import './resultado.dart';
import './questionario.dart';
import './questionario.dart';

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

      // Metódo de validação
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

    // Metódo privado
  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  // Metódo build
  @override // <- Sobrescrevendo o método build
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              quandoResponder: _responder,
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
