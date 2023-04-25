import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './exmple.dart';

class App extends ConsumerWidget {
  const App();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Abstract Factory',
      theme: ThemeData(useMaterial3: true),
      home: const Example(),
    );
  }
}
