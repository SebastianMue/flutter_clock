import 'dart:collection';

import 'package:digital_clock/models/ClockTheme.dart';
import 'package:digital_clock/models/TextLine.dart';
import 'package:flutter/material.dart';

abstract class LanguageKit {
  String _name, _iso;
  List<String> _textLines;
  HashMap _mapping;

  LanguageKit(this._iso, this._name, this._textLines, this._mapping);

  List<RichText> getRichTextFields(
      List<String> displayedWords, ClockTheme theme) {
    List<List<bool>> activeList = List.generate(_textLines.length,
        (_) => List.generate(_textLines[0].length, (_) => false));
    return List<int>.generate(_textLines.length - 1, (i) => i + 1)
        .map((index) => new TextLine(_textLines[index], index)
            .getRichTextWidget(theme, activeList[index]))
        .toList();
  }
}
