import 'package:flutter/material.dart';
import 'package:shop_app/cart.dart';
import 'package:shop_app/shop_screen.dart';

class BottomNavigationComponent extends StatelessWidget {
  const BottomNavigationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 2,
      height: 60,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: .spaceAround,
        children: [
          IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop(
                MaterialPageRoute(
                  builder: (context) {
                    return ShopScreen();
                  },
                ),
              );
            },
            icon: Icon(Icons.home),
          ),
          IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Cart();
                  },
                ),
              );
            },
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
