import 'package:flutter/material.dart';

import '../iactivity_indicator.dart';

class AndroidActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return const CircularProgressIndicator();
    
  }
}