// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:digital_clock/models/ClockTheme.dart';
import 'package:digital_clock/models/languagekits/EnglishKit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:digital_clock/flutter_clock_helper/model.dart';

ClockTheme _darkTheme =
new ClockTheme(Colors.black, Colors.white, Color.fromARGB(100, 96, 96, 96));
ClockTheme _lightTheme =
new ClockTheme(Colors.white, Colors.black, Color.fromARGB(100, 184,184,184));

class DigitalClock extends StatefulWidget {
  const DigitalClock(this.model);

  final ClockModel model;

  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  DateTime _dateTime = DateTime.now();
  Timer _timer;

  @override
  void initState() {
    super.initState();
    widget.model.addListener(_updateModel);
    _updateTime();
    _updateModel();
  }

  @override
  void didUpdateWidget(DigitalClock oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      oldWidget.model.removeListener(_updateModel);
      widget.model.addListener(_updateModel);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    widget.model.removeListener(_updateModel);
    widget.model.dispose();
    super.dispose();
  }

  void _updateModel() {
    setState(() {});
  }

  void _updateTime() {
    setState(() {
      _dateTime = DateTime.now();
      _timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: _dateTime.millisecond),
        _updateTime,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    final theme = Theme
        .of(context)
        .brightness == Brightness.light
        ? _lightTheme
        : _darkTheme;
    return Container(
        color: theme.background,
        child: Center(
            child: Column(
                children: new EnglishKit().getRichTextFields(
                    _dateTime.hour, _dateTime.minute, theme))));
  }
}
