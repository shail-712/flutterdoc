import 'package:flutter/material.dart';

class ContainerExampleScreen extends StatelessWidget {
  const ContainerExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200, // container width
            height: 100, // container height
            alignment: Alignment.center, // center child
            margin: const EdgeInsets.all(20), // outer spacing
            padding: const EdgeInsets.all(10), // inner spacing
            color: Colors.blue, // background color
            child: const Text(
              "Hello Container!",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
