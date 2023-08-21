class RespostaModel {
  String? resposta;
  bool? isTrue;
  RespostaModel({
    required this.resposta,
    required this.isTrue,
  });

  RespostaModel.fromMap(Map<String, Object> map) {
    resposta = (map['resposta'] as String);
    isTrue = (map['isTrue'] as bool);
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = Map();
    map['resposta'] = resposta ?? '';
    map['isTrue'] = isTrue ?? false;
    return map;
  }
}
