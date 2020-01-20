import 'dart:collection';

import 'package:digital_clock/models/Coordinate.dart';
import 'package:digital_clock/models/languagekits/LanguageKit.dart';

class EnglishKit extends LanguageKit {
  static String _iso = "en";
  static String _name = "English";
  static List<String> _textLines = [
    "JKDDLITKEJISJKLKIKJD",
    "JITKLOSKOLAPJKLKIKJD",
    "JKJKLOSKADEEJKLKIKJD",
    "JKJKLOSKWOLPJKLKIKJD",
    "JNINEOSELEVENKTWELVE",
    "JONELOSKFIVEJKTHREED",
    "FOURTWOKEIGHTKLSEVEN",
    "JKSIXOTENHSLJO'CLOCK"
  ];
  static Map<String, List<Coordinate>> _mapping = {
    "IS": [new Coordinate(10, 0), new Coordinate(11,0)],
    "IT": [new Coordinate(5, 0), new Coordinate(6,0)],
    "ONE": [new Coordinate(1, 5), new Coordinate(2,5), new Coordinate(3,5)],
    "TWO": [new Coordinate(4, 6), new Coordinate(5,6), new Coordinate(6,6), new Coordinate(7,6)],
    "THREE": [new Coordinate(14, 5), new Coordinate(15,5), new Coordinate(16,5), new Coordinate(17,5), new Coordinate(18,5)],
    "FOUR": [new Coordinate(0, 6), new Coordinate(1,6), new Coordinate(2,6), new Coordinate(3,6)],
    "FIVE": [new Coordinate(8, 5), new Coordinate(9,5), new Coordinate(10,5)],
    "SIX": [new Coordinate(2, 7), new Coordinate(3,7), new Coordinate(4,7)],
    "SEVEN": [new Coordinate(5, 7), new Coordinate(16,7), new Coordinate(17,7), new Coordinate(18,7), new Coordinate(19,7)],
    "EIGHT": [new Coordinate(8, 6), new Coordinate(9,6), new Coordinate(10,6), new Coordinate(11,6)],
    "NINE": [new Coordinate(1, 4), new Coordinate(2,4), new Coordinate(3,4), new Coordinate(4,4)],
    "TEN": [new Coordinate(5, 7), new Coordinate(6,7), new Coordinate(7,7)],
    "ELEVEN": [new Coordinate(7, 4),new Coordinate(8, 4),new Coordinate(9, 4),new Coordinate(10, 4),new Coordinate(11, 4),new Coordinate(12, 4)],
    "TWELVE": [new Coordinate(14,4), new Coordinate(15,4), new Coordinate(16,4), new Coordinate(17,4), new Coordinate(18,4), new Coordinate(19,4)],
    "O'CLOCK": [new Coordinate(13, 7), new Coordinate(14,7), new Coordinate(15,7), new Coordinate(16,7), new Coordinate(17,7), new Coordinate(18,7), new Coordinate(19,7)]
  };

  EnglishKit() : super(_iso, _name, _textLines, _mapping);
}
