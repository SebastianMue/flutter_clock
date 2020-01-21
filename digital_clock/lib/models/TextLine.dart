import 'package:digital_clock/models/ClockTheme.dart';
import 'package:flutter/widgets.dart';

class TextLine {
  int _id;
  String _text;

  int get id => _id;

  String get text => _text;

  TextLine(this._text, this._id);

  RichText getRichTextWidget(ClockTheme theme, List<bool> activeList) {
    return RichText(
      text: TextSpan(
        style:
            TextStyle(color: theme.background, fontSize: 45, letterSpacing: 8),
        children: Iterable<int>.generate(_text.length)
            .map((index) =>
                getLetterTextSpan(theme, _text[index], activeList[index]))
            .toList(),
      ),
    );
  }

  TextSpan getLetterTextSpan(ClockTheme theme, String character,
      bool isActive) {
    return TextSpan(
        text: character,
        style:
            TextStyle(color: isActive ? theme.activeText : theme.inactiveText));
  }
}
