import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Expended"),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 250,
                  color: Colors.red,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 250,
                  color: Colors.green,
                  child: const Center(
                    child: Text("2"),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 250,
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
