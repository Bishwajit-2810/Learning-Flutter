import 'package:basic_class_5_routing/screen_2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Routes"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenTwo.id);
            },
            child: const Center(
              child: Text("scr 2"),
            ),
          ),
        ],
      ),
    );
  }
}
