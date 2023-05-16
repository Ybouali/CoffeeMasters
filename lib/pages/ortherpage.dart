import 'package:coffeemasters/data/datamodel.dart';
import 'package:flutter/material.dart';

import '../data/datamanager.dart';

class OrtherPage extends StatelessWidget {
  final DataManager dataManager;
  const OrtherPage({super.key, required this.dataManager});

  @override
  Widget build(BuildContext context) {
    return Text("Cart length is ${dataManager.cart.length}");
  }
}

class OrtherItem extends StatelessWidget {
  final ItemInCard item;
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
            )
          ),
        ]),
      ),
    );
  }
}
