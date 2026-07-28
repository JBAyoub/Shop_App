import 'package:flutter/material.dart';
import 'package:shop_app/global_vars.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final sizes = products[0]["sizes"] as List<int>;
  late int _selectedSize;
  @override
  void initState() {
    super.initState();
    _selectedSize = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black.withAlpha(255)),
        title: Text("Details", style: Theme.of(context).textTheme.displayLarge),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: .center,
          spacing: 20,
          children: [
            Text(
              "Placeholder name",
              style: TextStyle(fontSize: 36, fontWeight: .bold),
            ),
            Container(
              isAntiAlias: true,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(125, 192, 235, 234),
              ),
              child: Image.asset(
                "assets/images/shoe_3.jpg",
                fit: .cover,
                height: 400,
              ),
            ),
            SizedBox(height: 20),
            Text("\$44.22", style: TextStyle(fontSize: 42, fontWeight: .w800)),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: .horizontal,
                itemCount: sizes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedSize = index;
                        });
                      },
                      child: Chip(
                        backgroundColor: _selectedSize == index
                            ? Theme.of(context).colorScheme.primary
                            : const Color.fromARGB(100, 255, 255, 255),
                        clipBehavior: .antiAliasWithSaveLayer,
                        label: Text("${sizes[index]}"),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  shadowColor: Color.fromARGB(255, 27, 27, 17),
                ),
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: const Color.fromARGB(255, 5, 5, 5),
                ),
                onPressed: () {},
                label: Text(
                  "Add to to cart",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
