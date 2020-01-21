import 'dart:collection';

import 'package:digital_clock/models/ClockTheme.dart';
import 'package:digital_clock/models/Coordinate.dart';
import 'package:digital_clock/models/TextLine.dart';
import 'package:flutter/material.dart';

abstract class LanguageKit {
  String _name, _iso;
  List<String> _textLines;
  Map<String, List<Coordinate>> _mapping;
  Map<int, String> _numberToName;

  LanguageKit(this._iso, this._name, this._textLines, this._mapping, this._numberToName);

  List<RichText> getRichTextFields(int hour, int minute, ClockTheme theme) {
    List<String> displayedWords = getTextFromTime(hour, minute);
    List<List<bool>> activeList = List.generate(_textLines.length,
        (_) => List.generate(_textLines[0].length, (_) => false));

    List<Coordinate> activeCoordinates =
        displayedWords.expand((word) => _mapping[word]).toList();

    activeCoordinates
        .forEach((coordinate) => activeList[coordinate.y][coordinate.x] = true);

    return Iterable<int>.generate(_textLines.length)
        .map((index) => new TextLine(_textLines[index], index)
            .getRichTextWidget(theme, activeList[index]))
        .toList();
  }


  List<String> getTextFromTime(int hour, int minute);


}
