import 'dart:io';
import 'products.dart';
import 'my_exceptions.dart';

abstract class ProductSource {
  List<Product> getProducts();
}

class KeyboardSource implements ProductSource {
  @override
  List<Product> getProducts() {
    List<Product> products = [];
    try {
      print('Product:');
      stdout.write('    > Name:  ');
      String name = stdin.readLineSync() as String;
      stdout.write('    > Price: ');
      double price = double.parse(stdin.readLineSync() as String);

      final product = Product(name: name, price: price);
      products.add(product);
    } on FormatException {
      throw ProductException('Price is invalid!');
    }

    return products;
  }
}

class FileSource implements ProductSource {
  FileSource({required String fileName}) : _fileName = fileName;

  String _fileName;

  @override
  List<Product> getProducts() {
    List<Product> products = [];
    try {
      String fileContents = File(_fileName).readAsStringSync();
      // print(fileContents);
      final items = fileContents.split('\n');
      for (var item in items) {
        var splittedItem = item.split('#');
        String name = splittedItem[0];
        double price = double.parse(splittedItem[1]);

        final product = Product(name: name, price: price);
        products.add(product);
      }
    } catch (e) {
      throw ProductException('File operation failed!');
    }

    return products;
  }
}
