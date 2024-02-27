import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_3/fav_pro.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favList = Provider.of<FavPro>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("FAV LIST"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: favList.seclectedList.length,
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
