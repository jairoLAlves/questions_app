import 'package:flutter/material.dart';
import 'package:questions_app/components/questao.dart';
import 'package:questions_app/components/resposta.dart';
import 'package:questions_app/model/resposta_model.dart';

class Questionnaire extends StatelessWidget {
  final String pergunta;
  final List<RespostaModel> respostas;
  final Function(bool resp) onPressed;
  final bool isEnabled;

  const Questionnaire({
    required this.pergunta,
    required this.respostas,
    required this.onPressed,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(pergunta),

        Expanded(
          child: ListView.builder(
            itemCount: respostas.length,
            itemBuilder: (context, index) {
              RespostaModel resposta = respostas[index];
              return Resposta(
                resposta: resposta,
                onPressed: onPressed,
                isEnabled: isEnabled,
                index: index,
                key: ValueKey(resposta.resposta),
              );
            },
          ),
        )
        // ...respostas.map((resposta) {
        //   return Resposta(
        //     resposta: resposta,
        //     onPressed: onPressed,
        //     isEnabled: isEnabled,
        //   );
        // }).toList(),
      ],
    );
  }
}
