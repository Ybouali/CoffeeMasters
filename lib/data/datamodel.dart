class Product {
  int id;
  String name;
  double price;
  String image;
  String get imageUrl => "https://firtman.github.io/coffeemasters/api/$image";

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  factory Product.fromJSON(Map<String, dynamic> json) {
    return Product(
      id: json["id"] as int,
      name: json["name"] as String,
      price: json["price"] as double,
      image: json["image"] as String,
    );
  }
}

class Category {
  String name;
  List<Product> products;

  Category({
    required this.name,
    required this.products,
  });

  factory Category.fromJSON(Map<String, Product> json) {
    var productsJson = json['products'] as Iterable<dynamic>;
    var products = productsJson.map((p) => Product.fromJSON(p)).toList();
    return Category(name: json['name'] as String, products: products);
  }
}

class ItemInCard {
  Product product;
  int quantity;

  ItemInCard({
    required this.product,
    required this.quantity,
  });
}
