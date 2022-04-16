import 'products.dart';
import 'dart:io';

import 'my_exceptions.dart';
import 'product_source.dart';

/// Run this code on the terminal
///   > dart my_store.dart
class MyStore {
  final List<Product> _products = [];

  void loadProducts(ProductSource source) {
    _products.addAll(source.getProducts());
  }

  void printProducts() {
    for (var product in _products) {
      print('    $product');
    }
  }
}

void main(List<String> args) {
  final myStore = MyStore();

  // try {
  //   print('Read Products:');
  //   for (int i = 0; i < 3; i++) {
  //     myStore.readProducts();
  //   }
  //   print('\nPrint Products:');
  //   myStore.printProducts();
  // } on ProductException catch (e) {
  //   print('${e.cause}');
  // }

  // try {
  //   print('Reading Products from File');
  //   myStore.readProductsFromFile('products.txt');
  //   print('Done!\n');

  //   print('Printing Products from List');
  //   myStore.printProducts();
  //   print('Done!\n');
  // } on ProductException catch (e) {
  //   print('${e.cause}');
  // }

  // ProductSource source = KeyboardSource();
  // try {
  //   print('Read Products:');
  //   for (int i = 0; i < 3; i++) {
  //     myStore.loadProducts(source);
  //   }
  //   print('\nPrint Products:');
  //   myStore.printProducts();
  // } on ProductException catch (e) {
  //   print('${e.cause}');
  // }

  ProductSource source = FileSource(fileName: 'products.txt');
  try {
    print('Reading Products from File');
    myStore.loadProducts(source);
    print('Done!\n');

    print('Printing Products from List');
    myStore.printProducts();
    print('Done!\n');
  } on ProductException catch (e) {
    print('${e.cause}');
  }
}
