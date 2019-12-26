import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/page/architecture.dart';

void main() {
  Fimber.plantTree(DebugTree());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Architecture(),
      ),
    );
  }
}
