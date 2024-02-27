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
            child: Text("Circular Avatar"),
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                // minRadius: 10,
                // maxRadius: 30,
                backgroundColor: Colors.deepPurple,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
                ),
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(
                height: 100,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
