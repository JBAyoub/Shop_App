import 'package:flutter/material.dart';
import 'package:shop_app/bottom_navigation_component.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("fuck")),
      bottomNavigationBar: BottomNavigationComponent(),
    );
  }
}
