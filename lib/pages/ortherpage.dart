import 'package:coffeemasters/data/datamodel.dart';
import 'package:flutter/material.dart';

import '../data/datamanager.dart';

class OrtherPage extends StatefulWidget {
  final DataManager dataManager;
  const OrtherPage({super.key, required this.dataManager});

  @override
  State<OrtherPage> createState() => _OrtherPageState();
}

class _OrtherPageState extends State<OrtherPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.dataManager.cart.isEmpty) {
      return const Center(
        child: Text(
          "No orthre has been added !",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        )
      );
    } else {
      return ListView.builder(
        itemCount: widget.dataManager.cart.length,
        itemBuilder: (context, index) {
          var item = widget.dataManager.cart[index];
          return OrtherItem(
              item: item,
              onRemove: (removedpProduct) {
                setState(() {
                  widget.dataManager.cartRemove(removedpProduct);
                });
              });
        },
      );
    }
  }
}

class OrtherItem extends StatelessWidget {
  final ItemInCart item;
  final Function onRemove;
  const OrtherItem({super.key, required this.item, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text("${item.quantity}x"),
              )),
          Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  item.product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              flex: 2,
              child: Text(
                  "\$${(item.product.price * item.quantity).toStringAsFixed(2)}")),
          Expanded(
              flex: 1,
              child: IconButton(
                icon: const Icon(Icons.remove),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  onRemove(item.product);
                },
              ))
        ]),
      ),
    );
  }
}
