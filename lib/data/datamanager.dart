import 'package:coffeemasters/data/datamodel.dart';

class DataManager {
  List<Category>? _menu;
  List<ItemInCard> cart = [];

  fetchMenu() {}

  Future<List<Category> > getMenu() async {
    if (_menu == null) await fetchMenu();
    return _menu;
  }

  cardAdd(Product product) {
    bool found = false;
    for (var item in cart) {
      if (item.product.id == product.id) {
        item.quantity++;
        found = true;
      }
      if (!found) cart.add(ItemInCard(product: product, quantity: 1));
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
