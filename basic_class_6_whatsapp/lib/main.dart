import 'package:basic_class_6_whatsapp/whatsAppHome.dart';
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
      home: const WhatsAppHome(),
      theme: ThemeData(
        brightness: Brightness.dark,
        //brightness: Brightness.light,
        primarySwatch: Colors.teal,
        //useMaterial3: true,
      ),
    );
  }
}
