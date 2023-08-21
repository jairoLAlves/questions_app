import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  void Function() onPressed;
  int questionsRight;

  Resultado(this.onPressed, this.questionsRight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body:  Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Você Acertou $questionsRight',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            //IconButton(onPressed: onPressed, icon: Icon(Icons.refresh))
          ],
        ),
      ),
    );
  }
}
