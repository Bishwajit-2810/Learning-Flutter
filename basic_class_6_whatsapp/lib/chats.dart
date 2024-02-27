import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return const ListTile(
          title: Text("Saif"),
          subtitle: Text("Have a good day"),
          trailing: Text("08:35 PM"),
          leading: CircleAvatar(
            backgroundColor: Colors.green,

            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
            ),

            // backgroundColor: Colors.green,
            // backgroundImage: NetworkImage(
            //   "https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
            // ),
          ),
        );
      },
    );
  }
}
