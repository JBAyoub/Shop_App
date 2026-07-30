import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Providers/cart_provider.dart';
import 'package:shop_app/Providers/product_provider.dart';
import 'package:shop_app/Pages/shop_screen.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(
          lazy: true,
          create: (BuildContext context) => CartProvider(),
        ),
        ChangeNotifierProvider<ProductProvider>(
          lazy: true,
          create: (context) => ProductProvider(),
        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ShopScreen(),

        initialRoute: "shop_screen",
        theme: ThemeData(
          fontFamily: "Lato",
          useMaterial3: true,
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(fontWeight: .bold, fontSize: 16),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 0.6),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 204, 1, 1),
            primary: const Color.fromRGBO(254, 204, 1, 1),
          ),
          textTheme: const TextTheme(
            displayMedium: TextStyle(fontSize: 20, fontWeight: .w600),
            displayLarge: TextStyle(fontSize: 26, fontWeight: .bold),
            displaySmall: TextStyle(
              fontSize: 16,
              fontWeight: .w700,
              color: Color.fromARGB(150, 5, 5, 5),
            ),
          ),
        ),
      ),
    );
  }
}
