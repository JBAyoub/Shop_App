import 'package:flutter/material.dart';
import 'package:shop_app/shop_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      home: ShopScreen(),
      theme: ThemeData(
        fontFamily: "Lato",
        colorScheme: ColorScheme.fromSeed(
          brightness: .light,
          seedColor: const Color.fromRGBO(254, 206, 1, 1),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
