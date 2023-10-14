import 'dart:io';
import 'product.dart';

class Phone extends Product {
  int? phoneChoosen;

  @override
  List<String>? get productName =>
      ["Iphone 12", "Iphone 13", "Iphone 14", "Iphone 15"];

  @override
  List<int>? get _price => [800, 900, 1100, 1200];

  String? phoneProduct() {
    if (choosenCategoty == "Phones") {
      for (int i = 0; i > productName!.length; i++) {
        print("Model $productName[i] >>> Price $_price[i]");
      }
      ;
      phoneChoosen = int.parse(stdin.readLineSync()!);
      finalProductName = productName![phoneChoosen! - 1];
      finalProductPrice = _price![phoneChoosen! - 1];
      print("Your Choosen is $finalProductName with price $finalProductPrice");
    } else {
      return CategoryType();
    }
  }
}
