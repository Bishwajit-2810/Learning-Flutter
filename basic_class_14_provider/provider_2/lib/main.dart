import 'package:flutter/material.dart';
// import 'package:provider_2/home_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/home_page_pro.dart';
import 'package:provider_2/provider_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SliderChanger()),
      ],
      child: const MaterialApp(
        home: HomePage2(),
      ),
    );
  }
}
