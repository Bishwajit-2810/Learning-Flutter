import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'good morning',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
