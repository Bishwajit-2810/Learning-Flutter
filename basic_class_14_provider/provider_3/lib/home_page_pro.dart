import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_3/fav_pro.dart';
import 'package:provider_3/favourite.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavouriteScreen()));
            },
            child: const Icon(Icons.favorite),
          ),
        ],
        title: const Text("List of item"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return Consumer<FavPro>(
                    builder: (context, value, child) {
                      return ListTile(
                        onTap: () {
                          if (value.seclectedList.contains(index)) {
                            value.rmList(index);
                          } else {
                            value.addList(index);
                          }
                        },
                        title: Text("item $index"),
                        trailing: Icon(
                          (value.seclectedList.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
