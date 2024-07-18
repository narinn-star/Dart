import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(123, 106, 246, 0.839),
            elevation: 99,
            title: const Text('Hi~'),
          ),
          body: const Center(
            child: Text("Hello world"),
          )),
    );
  }
}
