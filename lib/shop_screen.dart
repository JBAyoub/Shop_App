import 'package:flutter/material.dart';
import 'package:shop_app/global_vars.dart';
import 'package:shop_app/schoe_container.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final List<String> _filters = const ["All", "Nike", "Adidas", "Bata"];
  late String _selectedFilter;
  @override
  void initState() {
    super.initState();
    _selectedFilter = _filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
      borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1), width: 2),
    );
    const errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
      borderSide: BorderSide(color: Color.fromRGBO(245, 116, 116, 1), width: 2),
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(fontWeight: .bold, fontSize: 35),
                  ),
                ),
                Expanded(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search_sharp),
                      border: outlineInputBorder,
                      enabledBorder: outlineInputBorder,
                      focusedBorder: outlineInputBorder,
                      errorBorder: errorBorder,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  scrollDirection: .horizontal,
                  itemCount: _filters.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedFilter = _filters[index];
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Chip(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(
                              width: 0.5,
                              color: Color.fromRGBO(245, 247, 249, 1),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          backgroundColor: _selectedFilter == _filters[index]
                              ? Theme.of(context).colorScheme.primary
                              : const Color.fromARGB(255, 235, 235, 235),
                          label: Text(_filters[index]),
                          labelStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                addRepaintBoundaries: true,
                primary: true,
                shrinkWrap: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ShoeContainer(
                    title: product['title'],
                    img: product["image"],
                    price: product["price"] as double,
                    color: index.isEven
                        ? const Color.fromARGB(255, 175, 221, 233)
                        : const Color.fromARGB(255, 234, 207, 242),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
