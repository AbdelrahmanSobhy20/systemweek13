import 'dart:io';

import 'product.dart';

class Tablets extends Product {
  int? tabletChoosen;
  @override
  List<String>? get productName =>
      ["iPad mini", "iPad Pro", "iPad Air", "iPad Air2"];

  @override
  List<int>? get _price => [500, 800, 1000, 1150];

  String? tabletProduct() {
    for (int i = 0; i > productName!.length; i++) {
      print("Model $productName[i] >>> Price $_price[i]");
    }
    ;
    tabletChoosen = int.parse(stdin.readLineSync()!);
    finalProductName = productName![tabletChoosen! - 1];
    finalProductPrice = _price![tabletChoosen! - 1];
    print("Your Choosen is $finalProductName with price $finalProductPrice");
  }
}
