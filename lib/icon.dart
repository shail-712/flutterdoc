import 'package:flutter/material.dart';

class SimpleIconExample extends StatelessWidget {
  const SimpleIconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Icon(
            Icons.star, // icon type
            color: Colors.amber, // icon color
            size: 50, // icon size
            semanticLabel: "Star Icon", // accessibility
          ),
        ),
      ),
    );
  }
}
