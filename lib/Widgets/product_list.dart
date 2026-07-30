import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Pages/product_details_page.dart';
import 'package:shop_app/Providers/product_provider.dart';
import 'package:shop_app/Widgets/schoe_container.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<String> _filters = const ["All", "Nike", "Adidas", "Bata"];
  late String _selectedFilter;

  final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
    borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1), width: 2),
  );
  final errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
    borderSide: BorderSide(color: Color.fromRGBO(245, 116, 116, 1), width: 2),
  );

  @override
  void initState() {
    super.initState();
    _selectedFilter = _filters[0];
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProductProvider>();

    return SafeArea(
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
                        context.read<ProductProvider>().setFilter(
                          _filters[index],
                        );
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
              itemCount: provider.filteredProducts.length,
              itemBuilder: (context, index) {
                final product = provider.filteredProducts[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ProductDetailsPage(product: product);
                        },
                      ),
                    );
                  },
                  child: ShoeContainer(
                    title: product['title'],
                    img: product["image"],
                    price: product["price"] as double,
                    color: index.isEven
                        ? const Color.fromARGB(255, 175, 221, 233)
                        : const Color.fromARGB(255, 234, 207, 242),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
