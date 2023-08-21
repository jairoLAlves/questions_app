import 'package:flutter/material.dart';
import 'package:questions_app/components/resultado.dart';
import 'package:questions_app/data/question_data.dart';
import 'package:questions_app/model/question_model.dart';

import 'components/questionario.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;
  bool isEnabled = true;
  bool isEnabledBtn = false;

  int acertos = 0;

  List<QuestionModel> _questions = <QuestionModel>[];

  @override
  void initState() {
    setState(() {
      _questions = QuestionData.questions;
    });
    super.initState();
  }

  void _nextQuestion() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        isEnabled = true;
        isEnabledBtn = false;
      });
    }
  }

  // void _backQuestion() {
  //   if (isBackQuestion) {
  //     setState(() {
  //       _perguntaSelecionada--;
  //       isEnabled = true;
  //     });
  //   }
  // }

  void _reset() {
    setState(() {
      _perguntaSelecionada = 0;
      acertos = 0;
    });
  }

  // void _isResult() {
  //   setState(() {
  //     isResult = true;
  //   });
  // }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _questions.length;
  }

  // bool get isBackQuestion {
  //   return _perguntaSelecionada > 0;
  // }

  void isEnabledFun(bool resp) {
    setState(() {
      isEnabled = false;
      isEnabledBtn = true;
    });
    if (resp) {
      setState(() {
        acertos++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    QuestionModel? question =
        temPerguntaSelecionada ? _questions[_perguntaSelecionada] : null;

    return MaterialApp(
      title: 'Questions',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: isEnabledBtn
            ? FloatingActionButton(
                onPressed: () {
                  _nextQuestion();
                },
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
              )
            : null,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            (temPerguntaSelecionada)
                ? 'Pergunta ${_perguntaSelecionada + 1} '
                : 'Resultado',
          ),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Expanded(
                    child: Questionnaire(
                      pergunta: question!.pergunta!,
                      respostas: question.resposta!,
                      onPressed: isEnabledFun,
                      isEnabled: isEnabled,
                    ),
                  ),
                ],
              )
            : Resultado(_reset, acertos),
      ),
    );
  }
}
