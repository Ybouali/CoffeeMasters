import 'package:coffeemasters/data/datamanager.dart';
import 'package:coffeemasters/data/datamodel.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final DataManager dataManager;
  const MenuPage({super.key, required this.dataManager});

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
        ProductItem(product: product1, onAdd: () {

        },),
        ProductItem(product: product1, onAdd: () {},),
        ProductItem(product: product1, onAdd: () {},),
        ProductItem(product: product1, onAdd: () {},),
        ProductItem(product: product1, onAdd: () {},),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onAdd;

  const ProductItem({super.key, required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
              child: Image.asset("assets/images/black_coffee.png",
                  fit: BoxFit.cover)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("\$ ${product.price}"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    onAdd(product);
                  },
                  child: const Text("Add"),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
