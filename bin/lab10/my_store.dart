import 'my_exceptions.dart';
import 'products.dart';
import 'dart:io';

class MyStore {
  final List<Product> _products = [];

  void readProducts() {
    try {
      print('Product:');
      stdout.write('    > Name:  ');
      String name = stdin.readLineSync() as String;
      stdout.write('    > Price: ');
      double price = double.parse(stdin.readLineSync() as String);

      final product = Product(name: name, price: price);
      _products.add(product);
    } on FormatException {
      throw ProductException('Price is invalid!');
    }
  }

  void printProducts() {
    for (var product in _products) {
      print('    $product');
    }
  }
}

void main(List<String> args) {
  final myStore = MyStore();

  try {
    print('Read Products:');
    for (int i = 0; i < 3; i++) {
      myStore.readProducts();
    }
    print('\nPrint Products:');
    myStore.printProducts();
  } on ProductException catch (e) {
    print('${e.cause}');
  }
}
