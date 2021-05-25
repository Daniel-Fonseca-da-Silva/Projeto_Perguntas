import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  // Variável
  final String texto;

  // Construtor
  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(texto),
      onPressed: null,
    );
  }
}
