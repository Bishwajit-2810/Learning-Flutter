import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_3/fav_pro.dart';
import 'package:provider_3/home_page_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavPro()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        home: const HomePage2(),
      ),
    );
  }
}
