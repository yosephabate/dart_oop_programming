class Product {
  Product({required String? name, required double price}) {
    if (name == null) {
      throw NullThrownError();
    }
    if (price < 0) {
      throw ArgumentError.value(price);
    }

    _name = name;
    _price = price;
  }

  String? _name;
  late double _price;

  String? get name => _name;
  double get price => _price;

  @override
  String toString() {
    return 'Product ( name: $_name => price: $_price )';
  }
}
