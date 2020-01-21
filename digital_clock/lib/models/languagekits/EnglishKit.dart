import 'package:digital_clock/models/Coordinate.dart';
import 'package:digital_clock/models/languagekits/LanguageKit.dart';
import 'package:flutter/cupertino.dart';

class EnglishKit extends LanguageKit {
  static String _iso = "en";
  static String _name = "English";
  static List<String> _textLines = [
    "PKDDLITKEJISJKLKIKJ",
    "HALFLISJIQUARTERIKJ",
    "TKJKTOSIJOLPASTKIIJ",
    "NINEISELEVENITWELVE",
    "JONEPOSIFIVEJITHREE",
    "FOURIJKEIGHTKISEVEN",
    "TWOSIXTENIJIO'CLOCK"
  ];
  static Map<String, List<Coordinate>> _mapping = {
    "QUARTER": [
      new Coordinate(9, 1),
      new Coordinate(10, 1),
      new Coordinate(11, 1),
      new Coordinate(12, 1),
      new Coordinate(13, 1),
      new Coordinate(14, 1),
      new Coordinate(15, 1),
    ],
    "TO": [new Coordinate(4, 2), new Coordinate(5, 2)],
    "PAST": [
      new Coordinate(11, 2),
      new Coordinate(12, 2),
      new Coordinate(13, 2),
      new Coordinate(14, 2)
    ],
    "HALF": [
      new Coordinate(0, 1),
      new Coordinate(1, 1),
      new Coordinate(2, 1),
      new Coordinate(3, 1)
    ],
    "IS": [new Coordinate(10, 0), new Coordinate(11, 0)],
    "IS": [new Coordinate(10, 0), new Coordinate(11, 0)],
    "IT": [new Coordinate(5, 0), new Coordinate(6, 0)],
    "ONE": [new Coordinate(1, 4), new Coordinate(2, 4), new Coordinate(3, 4)],
    "TWO": [new Coordinate(0, 6), new Coordinate(1, 6), new Coordinate(2, 6)],
    "THREE": [
      new Coordinate(14, 4),
      new Coordinate(15, 4),
      new Coordinate(16, 4),
      new Coordinate(17, 4),
      new Coordinate(18, 4)
    ],
    "FOUR": [
      new Coordinate(0, 5),
      new Coordinate(1, 5),
      new Coordinate(2, 5),
      new Coordinate(3, 5)
    ],
    "FIVE": [
      new Coordinate(8, 4),
      new Coordinate(9, 4),
      new Coordinate(10, 4),
      new Coordinate(11, 4)
    ],
    "SIX": [new Coordinate(3, 6), new Coordinate(4, 6), new Coordinate(5, 6)],
    "MIDNIGHT": [],
    "SEVEN": [
      new Coordinate(14, 5),
      new Coordinate(15, 5),
      new Coordinate(16, 5),
      new Coordinate(17, 5),
      new Coordinate(18, 5)
    ],
    "EIGHT": [
      new Coordinate(7, 5),
      new Coordinate(8, 5),
      new Coordinate(9, 5),
      new Coordinate(10, 5),
      new Coordinate(11, 5)
    ],
    "NINE": [
      new Coordinate(0, 3),
      new Coordinate(1, 3),
      new Coordinate(2, 3),
      new Coordinate(3, 3)
    ],
    "TEN": [new Coordinate(6, 6), new Coordinate(7, 6), new Coordinate(8, 6)],
    "ELEVEN": [
      new Coordinate(6, 3),
      new Coordinate(7, 3),
      new Coordinate(8, 3),
      new Coordinate(9, 3),
      new Coordinate(10, 3),
      new Coordinate(11, 3)
    ],
    "TWELVE": [
      new Coordinate(13, 3),
      new Coordinate(14, 3),
      new Coordinate(15, 3),
      new Coordinate(16, 3),
      new Coordinate(17, 3),
      new Coordinate(18, 3)
    ],
    "O'CLOCK": [
      new Coordinate(12, 6),
      new Coordinate(13, 6),
      new Coordinate(14, 6),
      new Coordinate(15, 6),
      new Coordinate(16, 6),
      new Coordinate(17, 6),
      new Coordinate(18, 6)
    ]
  };

  static Map<int, String> _numberToName = {
    0: "MIDNIGHT",
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

  @override
  List<String> getTextFromTime(int hour, int minute) {
    List<String> displayedWords = ["IT", "IS"];
    minute = (minute / 15).round() % 5;
    debugPrint(minute.toString());
    if (minute == 0) {
      displayedWords.add("O'CLOCK");
    } else if (minute == 1) {
      displayedWords.add("QUARTER");
      displayedWords.add("PAST");
    } else if (minute == 2) {
      displayedWords.add("HALF");
      displayedWords.add("PAST");
    } else if (minute == 3) {
      displayedWords.add("QUARTER");
      displayedWords.add("TO");
      hour = hour + 1;
    } else if (minute == 4) {
      displayedWords.add("O'CLOCK");
      hour = hour + 1;
    }
    displayedWords.add(_numberToName[hour]);
    return displayedWords;
  }

  EnglishKit() : super(_iso, _name, _textLines, _mapping);
}
