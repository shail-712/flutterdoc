import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Scaffold Example"), // top bar
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text("Hello from Scaffold!", style: TextStyle(fontSize: 22)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add), // floating button
        ),
        drawer: const Drawer(child: Center(child: Text("Drawer Menu"))),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey,
          child: SizedBox(
            height: 50,
            child: Center(child: Text("Bottom Navigation Bar")),
          ),
        ),
      ),
    );
  }
}
