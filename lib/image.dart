import 'package:flutter/material.dart';

class NetworkImageExample extends StatelessWidget {
  const NetworkImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.network(
            'https://plus.unsplash.com/premium_photo-1709579654090-3f3ca8f8416b?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJlJTIwbGFuZHNjYXBlfGVufDB8fDB8fHww',
            width: 300, // image width
            height: 200, // image height
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
