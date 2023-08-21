import 'package:questions_app/model/question_model.dart';

class QuestionData {
  List<Map<String, Object>> questionsMap = [
    {
      'pergunta': 'Quem escreveu a obra "Dom Quixote"?',
      'resposta': [
        {'resposta': 'William Shakespeare', 'isTrue': false},
        {'resposta': 'Miguel de Cervantes', 'isTrue': true},
        {'resposta': 'Friedrich Nietzsche', 'isTrue': false},
        {'resposta': 'Charles Dickens', 'isTrue': false},
      ],
    },
    {
      'pergunta': 'Qual é o maior planeta do nosso sistema solar?',
      'resposta': [
        {'resposta': 'Terra', 'isTrue': false},
        {'resposta': 'Vênus', 'isTrue': false},
        {'resposta': 'Júpiter', 'isTrue': true},
        {'resposta': 'Marte', 'isTrue': false},
      ],
    },
    {
      'pergunta':
          'Qual é o processo pelo qual as plantas convertem a luz solar em energia?',
      'resposta': [
        {'resposta': 'Fotossíntese', 'isTrue': true},
        {'resposta': 'Respiração', 'isTrue': false},
        {'resposta': 'Digestão', 'isTrue': false},
        {'resposta': 'Evaporação', 'isTrue': false},
      ],
    },
    {
      'pergunta': 'Quem pintou a Mona Lisa?',
      'resposta': [
        {'resposta': 'Pablo Picasso', 'isTrue': false},
        {'resposta': 'Leonardo da Vinci', 'isTrue': true},
        {'resposta': 'Vincent van Gogh', 'isTrue': false},
        {'resposta': 'Michelangelo', 'isTrue': false},
      ],
    },
    {
      'pergunta': 'Qual é a capital da França?',
      'resposta': [
        {'resposta': 'Madrid', 'isTrue': false},
        {'resposta': 'Roma', 'isTrue': false},
        {'resposta': 'Paris', 'isTrue': true},
        {'resposta': 'Londres', 'isTrue': false},
      ],
    },
    {
      'pergunta':
          'Normalmente, quantos litros de sangue uma pessoa tem? Em média, quantos são retirados numa doação de sangue?',
      'resposta': [
        {
          'resposta': 'Tem entre 2 a 4 litros. São retirados 450 mililitros',
          'isTrue': false,
        },
        {
          'resposta': 'Tem entre 4 a 6 litros. São retirados 450 mililitros',
          'isTrue': true,
        },
        {
          'resposta': 'Tem 10 litros. São retirados 2 litros',
          'isTrue': false,
        },
        {
          'resposta': ' Tem 7 litros. São retirados 1,5 litros',
          'isTrue': false,
        },
        {
          'resposta': 'Tem 0,5 litros. São retirados 0,5 litros',
          'isTrue': false,
        },
      ],
    },
    {
      'pergunta': 'De quem é a famosa frase “Penso, logo existo”?',
      'resposta': [
        {
          'resposta': 'Platão',
          'isTrue': false,
        },
        {
          'resposta': 'Galileu Galilei',
          'isTrue': false,
        },
        {
          'resposta': 'Descartes',
          'isTrue': true,
        },
        {
          'resposta': 'Sócrates',
          'isTrue': false,
        },
        {
          'resposta': 'Francis Bacon',
          'isTrue': false,
        },
      ],
    },
    {
      'pergunta': 'De onde é a invenção do chuveiro elétrico?',
      'resposta': [
        {
          'resposta': 'França',
          'isTrue': false,
        },
        {
          'resposta': 'Inglaterra',
          'isTrue': false,
        },
        {
          'resposta': 'Brasil',
          'isTrue': true,
        },
        {
          'resposta': 'Austrália',
          'isTrue': false,
        },
        {
          'resposta': 'Itália',
          'isTrue': false,
        }
      ],
    },
  ];

  QuestionData() {
    questionsMap.shuffle();
  }

  static List<QuestionModel> questions = QuestionData().questionsMap.map((map) {
    return QuestionModel.fromMap(map);
  }).toList();
}
