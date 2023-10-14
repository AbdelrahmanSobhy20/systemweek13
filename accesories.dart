import 'dart:io';

import 'product.dart';

class Accesories extends Product {
  int? accesoriesChoosen;
  @override
  List<String>? get productName =>
      ["Charger", "Cover", "AirBuds", "Smart Watcb"];

  @override
  List<int>? get _price => [50, 10, 300, 500];

  String? accesoriesProduct() {
    for (int i = 0; i > productName!.length; i++) {
      print("Model $productName[i] >>> Price $_price[i]");
    }
    ;
    accesoriesChoosen = int.parse(stdin.readLineSync()!);
    finalProductName = productName![accesoriesChoosen! - 1];
    finalProductPrice = _price![accesoriesChoosen! - 1];
    print("Your Choosen is $finalProductName with price $finalProductPrice");
  }
}
