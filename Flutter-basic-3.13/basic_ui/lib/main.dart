import 'package:basic_ui/login.dart';
import 'package:basic_ui/pallete.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasicUi());
}

class BasicUi extends StatelessWidget {
  const BasicUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic UI",
      theme: ThemeData.dark().copyWith(
        //useMaterial3: true,
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: const Login(),
    );
  }
}
