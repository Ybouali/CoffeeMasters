import 'dart:convert';

import 'package:coffeemasters/data/datamodel.dart';
import 'package:http/http.dart' as http;

class DataManager {
  List<Category>? _menu;
  List<ItemInCart> cart = [];

  fetchMenu() async {
    const url = "https://firtman.github.io/coffeemasters/api/menu.json";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      _menu = [];
      var body = response.body;
      var decodedData = jsonDecode(body) as List<dynamic>;
      for (var json in decodedData) {
        _menu?.add(Category.fromJson(json));
      }
    }
  }

  Future<List<Category>> getMenu() async {
    if (_menu == null) await fetchMenu();
    return _menu!;
  }

  cardAdd(Product p) {
    bool found = false;
    for (var item in cart) {
      if (item.product.id == p.id) {
        item.quantity++;
        found = true;
      }
    }
    if (!found) {
      cart.add(ItemInCart(product: p, quantity: 1));
    }
  }

  cartRemove(Product product) {
    cart.removeWhere((element) => element.product.id == product.id);
  }

  cartClear() {
    cart.clear();
  }

  double cartToutale() {
    double toutale = 0;

    for (var item in cart) {
      toutale += item.quantity * item.product.price;
    }
    return toutale;
  }
}
