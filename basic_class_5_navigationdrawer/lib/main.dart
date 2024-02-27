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
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Navigation Drawer"),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // DrawerHeader(
              //   child: Text("User"),
              // ),
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/13246954/pexels-photo-13246954.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                accountName: const Text("Bishwajit"),
                accountEmail: const Text("bishwajit2810@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.near_me),
                title: const Text("Shear"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.login_outlined),
                title: const Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
