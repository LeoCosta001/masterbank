import 'package:flutter/material.dart';

void main() => runApp(MasterbankApp());

class MasterbankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Dashboard'),
          )),
    );
  }
}
