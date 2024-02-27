import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  const Groups({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage(
                  "lib/images/Whatsapp-Logo-Free-Photo-png-removebg-preview.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Stay connected with a community",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "Communities bring members togather in topic-based groups, and make it easy to get admin announcements. Any community you're added to will appear here.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 105, 192, 108),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "Start your community",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
