import 'dart:collection';

import 'package:digital_clock/models/Coordinate.dart';
import 'package:digital_clock/models/languagekits/LanguageKit.dart';

class EnglishKit extends LanguageKit {
  static String _iso = "en";
  static String _name = "English";
  static List<String> _textLines = [
    "JKDDLITKEJISJKLKIKJ",
    "JITKLOSKOLAPJKLKIKJ",
    "JKJKLOSKIOLPJKLKIKJ",
    "NINEISELEVENITWELVE",
    "JONEPOSIFIVEJITHREE",
    "FOURIJKEIGHTKISEVEN",
    "PKSIXPTENISJO'CLOCK"
  ];
  static Map<String, List<Coordinate>> _mapping = {
    "IS": [new Coordinate(10, 0), new Coordinate(11,0)],
    "IT": [new Coordinate(5, 0), new Coordinate(6,0)],
    "ONE": [new Coordinate(1, 4), new Coordinate(2,4), new Coordinate(3,4)],
    "TWO": [new Coordinate(4, 5), new Coordinate(5,5), new Coordinate(6,5), new Coordinate(7,5)],
    "THREE": [new Coordinate(14, 4), new Coordinate(15,4), new Coordinate(16,4), new Coordinate(17,4), new Coordinate(18,4)],
    "FOUR": [new Coordinate(0, 5), new Coordinate(1,5), new Coordinate(2,5), new Coordinate(3,5)],
    "FIVE": [new Coordinate(8, 4), new Coordinate(9,4), new Coordinate(10,4)],
    "SIX": [new Coordinate(2, 6), new Coordinate(3,6), new Coordinate(4,6)],
    "SEVEN": [new Coordinate(14, 5), new Coordinate(15,5), new Coordinate(16,5), new Coordinate(17,5), new Coordinate(18,5)],
    "EIGHT": [new Coordinate(7, 5), new Coordinate(8,5), new Coordinate(9,5), new Coordinate(10,5)],
    "NINE": [new Coordinate(0, 3), new Coordinate(1,3), new Coordinate(2,3), new Coordinate(3,3)],
    "TEN": [new Coordinate(5, 6), new Coordinate(6,6), new Coordinate(7,6)],
    "ELEVEN": [new Coordinate(6, 3),new Coordinate(7, 3),new Coordinate(8, 3),new Coordinate(9, 3),new Coordinate(10, 3),new Coordinate(11, 3)],
    "TWELVE": [new Coordinate(13,3), new Coordinate(14,3), new Coordinate(15,3), new Coordinate(16,3), new Coordinate(17,3), new Coordinate(18,3)],
    "O'CLOCK": [new Coordinate(12, 6), new Coordinate(13,6), new Coordinate(14,3), new Coordinate(15,6), new Coordinate(16,6), new Coordinate(17,6), new Coordinate(18,6)]
  };

  static Map<int, String> _numberToName = {
    1: "ONE",
    2: "TWO",
    3: "THREE",
    4: "FOUR",
    5: "FIVE",
    6: "SIX",
    7: "SEVEN",
    8: "EIGHT",
    9: "NINE",
    10: "TEN",
    11: "ELEVEN",
    12: "TWELVE",
  };

  EnglishKit() : super(_iso, _name, _textLines, _mapping,_numberToName);
}
