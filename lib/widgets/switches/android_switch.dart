import 'package:flutter/material.dart';

import '../iswitch.dart';

class AndroidSwitch implements ISwitch {
  @override
  Widget render({required bool value, required ValueSetter<bool> onChanged}) {
    return Switch(
      value: value,
      onChanged: onChanged,
    );
  }
}