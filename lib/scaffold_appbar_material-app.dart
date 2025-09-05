import 'package:flutter/material.dart';

class ScaffoldAppbarMaterialapp extends StatelessWidget {
  const ScaffoldAppbarMaterialapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 🔹 MATERIALAPP (root of the app)
      home: Scaffold(
        // 🔹 SCAFFOLD (basic page structure)

        // 🔹 APPBAR (top navigation bar inside Scaffold)
        appBar: AppBar(
          title: const Text("This is APPBAR"), // Changed text
          backgroundColor: Colors.blue,
        ),

        // 🔹 BODY (main content of the page)
        body: const Center(
          child: Text(
            "This is the BODY of SCAFFOLD",
            style: TextStyle(fontSize: 22),
          ),
        ),

        // 🔹 FLOATING ACTION BUTTON (round button at bottom-right)
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: "This is the FloatingActionButton",
          child: const Icon(Icons.add),
        ),

        // 🔹 DRAWER (side navigation menu)
        drawer: const Drawer(
          child: Center(child: Text("This is the DRAWER inside SCAFFOLD")),
        ),

        // 🔹 BOTTOM NAVIGATION BAR
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey,
          child: SizedBox(
            height: 50,
            child: Center(child: Text("This is the BOTTOM NAVIGATION BAR")),
          ),
        ),
      ),
    );
  }
}
