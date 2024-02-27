import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/count_provider.dart';
import 'package:provider_1/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      ),
    );

    // return const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: HomeScreen(),
    // );
  }
}
