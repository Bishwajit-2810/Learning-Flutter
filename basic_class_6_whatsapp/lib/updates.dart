import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        if (index == 0) {
          return ListTile(
            title: const Text("My status"),
            subtitle: const Text("Tap to add status update"),
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
                        "https://images.thedirect.com/media/article_big/doctor-strange-return.jpg?imgeng=cmpr_75/",
                      ),
                    ),
                    Positioned(
                      left: 23,
                      top: 23,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return ListTile(
            title: const Text("Digonto"),
            subtitle: (index % 2 == 0)
                ? const Text("22 minutes ago")
                : const Text("35 minutes ago"),
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                  width: 3,
                ),
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                  "https://images03.military.com/sites/default/files/styles/full/public/2023-05/1time%20john%20wick%205%20announced%201200.jpg?itok=mOsc9ojK",
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
