import 'package:flutter/material.dart';

import '../islider.dart';

class AndroidSlider implements ISlider {
  @override
  Widget render(double value, ValueSetter<double> onChanged) {
    return Slider(
      max: 100.0,
      value: value,
      onChanged: onChanged,
    );
  }
}