import 'package:coffeemasters/data/datamanager.dart';
import 'package:coffeemasters/data/datamodel.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final DataManager dataManager;

  const MenuPage({super.key, required this.dataManager});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: dataManager.getMenu(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var listCategory = snapshot.data as List<Category>;

            return ListView.builder(
                itemCount: listCategory.length,
                itemBuilder: ((context, indexC) {
                  return Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(listCategory[indexC].name)),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: listCategory[indexC].products.length,
                          itemBuilder: ((context, indexP) {
                            Product product =
                                listCategory[indexC].products[indexP];
                            return ProductItem(
                                product: product,
                                onAdd: (addedProduct) {
                                  dataManager.cardAdd(addedProduct);
                                });
                          })),
                    ],
                  );
                }));
          } else {
            if (snapshot.hasError) {
              return const Text("There was an error !! ");
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  strokeWidth: 5.0, 
                  semanticsLabel: 'Loading',
                )
              );
            }
          }
        });
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
      child: SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 4,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
                child: Image.network(
              product.imageUrl,
              fit: BoxFit.fill,
            )),
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
                      child: Text("\$ ${product.price.toStringAsFixed(2)}"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      onAdd(product);
                    },
                    child: const Text("Add")
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
