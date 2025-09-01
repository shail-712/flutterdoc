import 'package:flutter/material.dart';

class ColumnExampleScreen extends StatelessWidget {
  const ColumnExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // vertical alignment
            crossAxisAlignment:
                CrossAxisAlignment.center, // horizontal alignment
            children: [
              Text("First Item"),
              SizedBox(height: 10), // spacing between items
              Text("Second Item"),
              Icon(Icons.star, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
