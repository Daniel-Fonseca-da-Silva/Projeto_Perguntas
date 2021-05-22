import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp()); // Inícia a aplicação


// Classe
class PerguntaApp extends StatelessWidget {

  void responder() {
    print('Pergunta respondida!');
  }

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  // Metódo build
  @override // <- Sobrescrevendo o método build
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }

}