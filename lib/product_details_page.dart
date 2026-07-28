import 'package:flutter/material.dart';
import 'package:shop_app/global_vars.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key});
  final sizes = products[0]["sizes"] as List<int>;
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
            SizedBox(height: 50),
            Text("\$44.22", style: TextStyle(fontSize: 42, fontWeight: .w800)),
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: .horizontal,
                itemCount: sizes.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: OutlinedButton(
                      clipBehavior: .antiAliasWithSaveLayer,
                      onPressed: () {},
                      child: Text(
                        "${sizes[index]}",
                        style: TextStyle(
                          fontWeight: .bold,
                          fontSize: 10,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: FilledButton.icon(
                icon: Icon(
                  Icons.shopping_cart,
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
