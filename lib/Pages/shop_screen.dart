import 'package:flutter/material.dart';
import 'package:shop_app/Pages/cart.dart';
import 'package:shop_app/Widgets/product_list.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});
  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final List<Widget> screens = [ProductList(), Cart()];
  late int _selectedScreen;

  @override
  void initState() {
    super.initState();
    _selectedScreen = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedScreen, children: screens),
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        height: 60,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: .spaceAround,
          children: [
            IconButton(
              iconSize: 30,
              onPressed: () {
                setState(() {
                  _selectedScreen = 0;
                });
              },
              icon: Icon(
                Icons.home_outlined,
                color: _selectedScreen == 0
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey[800],
              ),
            ),
            IconButton(
              iconSize: 30,
              onPressed: () {
                setState(() {
                  setState(() {
                    _selectedScreen = 1;
                  });
                });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: _selectedScreen == 1
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
