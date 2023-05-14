import 'package:coffeemasters/data/datamodel.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    var product1 = Product(
      id: 1,
      name: "Coffee",
      price: 0.99,
      image: "Coffee",
    );

    return ListView(
      children: [
        ProductItem(product: product1),
        ProductItem(product: product1),
        ProductItem(product: product1),
        ProductItem(product: product1),
        ProductItem(product: product1),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/images/black_coffee.png", fit: BoxFit.cover)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("\$ ${product.price}"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ElevatedButton(onPressed: () {
                
                  } , child: const Text("Add"),),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}
