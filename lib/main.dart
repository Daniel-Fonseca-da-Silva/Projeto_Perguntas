import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp()); // Inícia a aplicação

// Classe que gerencia o estado
class PerguntaAppState extends State<PerguntaApp> {

  // Variável
  var perguntaSelecionada = 0;

  // Metódo
  void responder() 
  {
    setState(() {
      perguntaSelecionada++;
    }); 
    print(perguntaSelecionada);
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
            Text(perguntas[perguntaSelecionada]),
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

// Classe
class PerguntaApp extends StatefulWidget {

  // Metódo para criar estado
  PerguntaAppState createState()
  {
    return PerguntaAppState();
  }

}