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
      debugShowCheckedModeBanner: false,
      routes: {
        "shop_screen": (context) => ShopScreen(),
        "cart": (context) => ShopScreen(),
      },
      initialRoute: "shop_screen",
      home: ShopScreen(),
      theme: ThemeData(
        fontFamily: "Lato",
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontWeight: .bold, fontSize: 16),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 0.6),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(254, 204, 1, 1),
          primary: const Color.fromRGBO(254, 204, 1, 1),
        ),
      ),
    );
  }
}
