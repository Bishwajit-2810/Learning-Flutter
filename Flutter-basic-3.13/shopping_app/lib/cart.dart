import 'package:flutter/material.dart';
import 'package:shopping_app/global_variables.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (BuildContext context, int index) {
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
              radius: 30,
              backgroundColor: const Color.fromRGBO(245, 247, 249, 1),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            title: Text(
              cartItem["title"].toString(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            subtitle: Text("Size: ${cartItem['sizes']}"),
          );
        },
      ),
    );
  }
}
