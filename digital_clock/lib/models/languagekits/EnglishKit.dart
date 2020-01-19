import 'dart:collection';

import 'package:digital_clock/models/Coordinate.dart';
import 'package:digital_clock/models/languagekits/LanguageKit.dart';

class EnglishKit extends LanguageKit {
  static String _iso = "en";
  static String _name = "English";
  static List<String> _textLines = [
    "JKJKLOSKFIVEJKLKIKJD",
    "JKJKLOSKFIVEJKLKIKJD",
    "JKJKLOSKFIVEJKLKIKJD",
    "JKJKLOSKFIVEJKLKIKJD",
    "JKJKLOSKFIVEJKLKIKJD",
    "JKJKLOSKFIVEJKLKIKJD",
    "JKJKLOSKFIVEJKLKIKJD",
    "JKJKLOSKFIVEJKLKIKJD"
  ];
  static HashMap<String, List<Coordinate>> _mapping;

  EnglishKit() : super(_iso, _name, _textLines, _mapping);
}
