import 'package:flutter/material.dart';
import 'package:flutter_architecture/page/architecture.dart';

class App extends StatelessWidget {
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
