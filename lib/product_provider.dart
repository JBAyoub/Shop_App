import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  String _selectedFilter = "All";

  List<Map<String, dynamic>> products = [
    {
      "id": 0,
      "title": "Men's shoes 1",
      "image": "assets/images/shoe_1.png",
      "company": "Nike",
      "price": 42.4,
      "sizes": [6, 7, 8, 9, 10],
    },
    {
      "id": 1,
      "title": "Men's shoes 2",
      "image": "assets/images/shoe_2.png",
      "company": "Adidas",
      "price": 39.3,
      "sizes": [6, 8, 9, 11],
    },
    {
      "id": 2,
      "title": "Men's shoes 3",
      "image": "assets/images/shoe_3.jpg",
      "company": "Bata",
      "price": 35.6,
      "sizes": [6, 7, 8, 9, 11],
    },
    {
      "id": 3,
      "title": "Men's shoes 4",
      "image": "assets/images/shoe_4.webp",
      "company": "Nike",
      "price": 42.0,
      "sizes": [6, 7, 8, 9, 10],
    },
    {
      "id": 4,
      "title": "Men's shoes 5",
      "image": "assets/images/shoe_5.jpg",
      "company": "Bata",
      "price": 42.7,
      "sizes": [6, 7, 8, 9, 10],
    },
  ];

  void setFilter(String filter) {
    _selectedFilter = filter;
    notifyListeners();
  }

  List<Map<String, dynamic>> get filteredProducts {
    if (_selectedFilter == "All") return products;
    return products.where((e) => e["company"] == _selectedFilter).toList();
  }
}
