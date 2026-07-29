import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final cartItems = context.watch<CartProvider>().cartItems;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart", style: Theme.of(context).textTheme.displayLarge),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: ListView.builder(
          itemCount: Provider.of<CartProvider>(context).cartItems.length,
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
              subtitle: Text('Size: ${cartItem["Size"]}'),
              trailing: IconButton(
                padding: EdgeInsets.only(bottom: 10),
                iconSize: 35,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog.adaptive(
                        title: Text(
                          "Delete Product",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        content: Text(
                          "Are you sure you want to delete this product from the cart?",
                          style: Theme.of(context).textTheme.displaySmall,
                          softWrap: true,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.read<CartProvider>().deleteProduct(
                                cartItem,
                              );
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Yes",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "No",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 221, 82, 82),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete_outline_rounded, color: Colors.red),
              ),
            );
          },
        ),
      ),
    );
  }
}
