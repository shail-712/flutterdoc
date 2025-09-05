import 'package:flutter/material.dart';

class MaterialAppExample extends StatelessWidget {
  const MaterialAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App", // App title
      debugShowCheckedModeBanner: false, // hide debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue, // App theme color
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("MaterialApp Example")),
        body: const Center(
          child: Text(
            "Hello from MaterialApp!",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
