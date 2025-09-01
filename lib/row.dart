import 'package:flutter/material.dart';

class RowExampleScreen extends StatelessWidget {
  const RowExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // center horizontally
            crossAxisAlignment: CrossAxisAlignment.center, // center vertically
            children: [
              Text("Hello"),
              SizedBox(width: 10), // spacing between items
              Text("Flutter"),
              Icon(Icons.star, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
