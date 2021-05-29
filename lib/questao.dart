import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  // Variável
  final String texto;

  // Construtor
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(texto,
          style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
