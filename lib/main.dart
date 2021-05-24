import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(new PerguntaApp()); // Inícia a aplicação

// Classe privada que gerencia o estado
class _PerguntaAppState extends State<PerguntaApp> {

  // Variável privada
  var _perguntaSelecionada = 0;

  // Metódo privado
  void _responder() 
  {
    setState(() {
      _perguntaSelecionada++;
    }); 
    print(_perguntaSelecionada);
  }

  // Metódo build
  @override // <- Sobrescrevendo o método build
  Widget build(BuildContext context) {

    final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }

}

// Classe
class PerguntaApp extends StatefulWidget {

  // Metódo privado para criar estado
  _PerguntaAppState createState()
  {
    return _PerguntaAppState();
  }

}