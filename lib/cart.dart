import 'package:flutter/material.dart';
import 'package:shop_app/global_vars.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart", style: Theme.of(context).textTheme.displayLarge),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            final cartItem = cartItems[index];
            return ListTile(
              dense: true,
              contentPadding: EdgeInsets.all(10),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(cartItem["image"]),
              ),
              enabled: true,
              splashColor: Theme.of(context).colorScheme.primary,
              title: Text(
                cartItem['title'],
                style: Theme.of(context).textTheme.displayMedium,
              ),
              subtitle: Text('Size: ${cartItem["sizes"][0]}'),
              trailing: IconButton(
                padding: EdgeInsets.only(bottom: 10),
                iconSize: 35,
                onPressed: () {},
                icon: Icon(Icons.delete_outline_rounded, color: Colors.red),
              ),
            );
          },
        ),
      ),
    );
  }
}
