import 'package:flutter/material.dart';

class ShoeContainer extends StatelessWidget {
  final String title;
  final String img;
  final double price;
  final Color color;
  const ShoeContainer({
    super.key,
    required this.title,
    required this.img,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: const Color.fromARGB(255, 235, 235, 235)),
        backgroundBlendMode: .multiply,
        color: color,
      ),
      margin: EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(title, style: Theme.of(context).textTheme.displayLarge),
          Text('€$price', style: Theme.of(context).textTheme.displaySmall),
          Center(
            child: Image.asset(
              img,
              height: 250,
              filterQuality: .high,
              isAntiAlias: true,
            ),
          ),
        ],
      ),
    );
  }
}
