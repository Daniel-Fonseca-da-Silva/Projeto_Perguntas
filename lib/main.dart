import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(new PerguntaApp()); // Inícia a aplicação

// Classe privada que gerencia o estado
class _PerguntaAppState extends State<PerguntaApp> {
  // Variável privada
  var _perguntaSelecionada = 0;

  // Metódo privado
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  // Metódo build
  @override // <- Sobrescrevendo o método build
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
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

    List<String> respostas = perguntas[_perguntaSelecionada].cast() ['respostas'];

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada] ['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ),
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
