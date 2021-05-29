import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
// Variável
  final int pontuacao;

// Função
  final void Function() quandoReiniciarQuestionario;

// Construtor
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

// Metódo get que retorna string
  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )
        ),
        ElevatedButton(
          child: Text('Reiniciar'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue
          ),
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}
