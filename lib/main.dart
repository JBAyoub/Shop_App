import 'package:flutter/material.dart';
import 'package:shop_app/shop_screen.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      routes: {
        "shop_screen": (context) => ShopScreen(),
        "cart": (context) => ShopScreen(),
      },
      initialRoute: "shop_screen",
      home: ShopScreen(),
      theme: ThemeData(
        fontFamily: "Lato",
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(256, 204, 1, 1),
        ),
      ),
    );
  }
}
