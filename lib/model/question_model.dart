import 'package:questions_app/model/resposta_model.dart';

class QuestionModel {
  String? pergunta;
  List<RespostaModel>? resposta;

  QuestionModel({
    required this.pergunta,
    required this.resposta,
  });

  QuestionModel.fromMap(Map<String, Object> map) {
    pergunta = (map['pergunta'] as String);

    if (resposta == null) {
      resposta = <RespostaModel>[];
      (map['resposta'] as List<Map<String, Object>>).forEach((map) {
        resposta!.add(RespostaModel.fromMap(map));
      });
    }
  }
  Map<String, Object> toMap() {
    Map<String, Object> map = Map();
    map['pergunta'] = pergunta ?? '';
    map['resposta'] = resposta ?? [];
    return map;
  }
}
