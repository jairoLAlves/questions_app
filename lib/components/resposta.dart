import 'dart:math';

import 'package:flutter/material.dart';
import 'package:questions_app/model/resposta_model.dart';

class Resposta extends StatefulWidget {
  final RespostaModel resposta;
  final void Function(bool resp) onPressed;
  final bool isEnabled;
  final int index;

  const Resposta(
      {required this.resposta,
      required this.onPressed,
      required this.isEnabled,
      required this.index,
      super.key});

  @override
  State<Resposta> createState() => _RespostaState();
}

class _RespostaState extends State<Resposta> {
  Color corButton = Colors.blue;

  void setColor(bool resp) {
    setState(() {
      corButton = resp ? Colors.green : Colors.red;
    });
  }

  String getLetra(int index) {
    switch (index) {
      case 0:
        return 'A';
      case 1:
        return 'B';
      case 2:
        return 'C';
      case 3:
        return 'D';
      case 4:
        return 'E';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
          child: ElevatedButton(
            key: widget.key,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              side: const BorderSide(
                width: 2,
                color: Colors.black54,
              ),
              textStyle: const TextStyle(color: Colors.white),
              backgroundColor: corButton,
            ),
            onPressed: () {
              if (widget.isEnabled) {
                bool resp = widget.resposta.isTrue!;
                setColor(resp);
                widget.onPressed(resp);
              }
            },
            child: Text(
              widget.resposta.resposta!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text('${getLetra(widget.index)}'),
        )
      ]),
    );
  }
}
