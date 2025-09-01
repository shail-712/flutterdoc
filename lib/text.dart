import 'package:flutter/material.dart';

class TextExampleScreen extends StatelessWidget {
  const TextExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
