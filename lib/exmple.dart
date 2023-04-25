import 'package:flutter/material.dart';
import 'factory_selection.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FactorySelection(); // retornar la instancia de FactorySelection en el método build
  }
}