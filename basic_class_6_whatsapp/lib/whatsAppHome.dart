import 'package:basic_class_6_whatsapp/calls.dart';
import 'package:basic_class_6_whatsapp/chats.dart';
import 'package:basic_class_6_whatsapp/groups.dart';
import 'package:basic_class_6_whatsapp/updates.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.groups),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Updates"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 15,
            ),
            const Icon(Icons.search),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("New broadcast"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Linked devices"),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text("Starred Messages"),
                ),
                const PopupMenuItem(
                  value: 5,
                  child: Text("Settings"),
                ),
              ],
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            Groups(),
            Chats(),
            Updates(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
