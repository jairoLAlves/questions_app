import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class question extends StatelessWidget {
  String texto;
  question(
    this.texto,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigo.shade600, Colors.black87])),
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Text(
          texto,
          //maxLines: 3,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
