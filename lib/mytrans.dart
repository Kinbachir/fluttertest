import 'package:get/get.dart';

class Transi extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'HELLO WORLD %s',
          'next': 'NEXT',
          'back': 'BACK',
          'Correct': 'email correct',
          'FormatG': 'Good email format',
          'inCorrect': 'email incorrect',
          'valide': 'valide email',
          'FormatB': 'Bad email format',
        },
        'fr': {
          'title': 'BONJOUR MONDE',
          'next': 'SUIVANT',
          'back': 'RETOUR',
          'Correct': 'email valide',
          'FormatG': 'Bon email format',
          'inCorrect': 'email invalide',
          'valide': 'valide email',
          'FormatB': 'Mauvais email format',
        }
      };
}
