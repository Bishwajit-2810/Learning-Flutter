import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () async {
                  //hello();
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setBool("key1", false);
                  sp.setInt("key2", 10);
                  print(sp.getInt("key2").toString());
                  print(sp.getBool("key1").toString());

                  sp.remove("key2");
                  print(sp.getInt("key2").toString());
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text("tap"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> hello() async {
    await Future.delayed(
      const Duration(seconds: 10),
    );
    print("delayed");
  }
}
