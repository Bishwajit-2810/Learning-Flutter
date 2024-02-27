import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Hello I am spiderman\nWho are you",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(height: 15),
                Image(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/13246954/pexels-photo-13246954.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                SizedBox(
                  height: 20,
                ),
                Placeholder(
                  fallbackHeight: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage(
                      "lib/assets/Screenshot from 2023-10-10 21-09-43.png"),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
