import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  // Variável
  final String texto;

  // Função vazia
  final void Function() quandoSelecionado;

  // Construtor
  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue
        ),
        child: Text(
          texto,
          style: TextStyle(color: Colors.white70),
          ),
        onPressed: quandoSelecionado, // Quando pressionado chame a função
      ),
    );
  }
}
