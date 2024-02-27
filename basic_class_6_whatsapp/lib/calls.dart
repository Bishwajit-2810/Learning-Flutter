import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: const Text("Digonto"),
          subtitle: (index % 2 == 0)
              ? const Text("October 20, 8:20 pm")
              : const Text("October 21, 8:20 pm"),
          trailing: (index % 2 == 0)
              ? const Icon(
                  Icons.call,
                )
              : const Icon(
                  Icons.video_call_rounded,
                ),
          leading: const CircleAvatar(
            backgroundColor: Colors.green,
            backgroundImage: NetworkImage(
              "https://images03.military.com/sites/default/files/styles/full/public/2023-05/1time%20john%20wick%205%20announced%201200.jpg?itok=mOsc9ojK",
            ),
          ),
        );
      },
    );
  }
}
