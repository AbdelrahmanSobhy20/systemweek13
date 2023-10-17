import 'dart:io';
import 'product.dart';

class Tablets extends Product {
  String? TabletSelected() {
    int? tabletChoosen;
    Map<String, int> tabletsDetails = {
      "iPad mini": 500,
      "iPad Pro": 800,
      "iPad Ait": 1000,
      "iPad Air2": 1150
    };
    print(tabletsDetails);
    tabletChoosen = int.parse(stdin.readLineSync()!);
    finalProductDetails = tabletsDetails[tabletChoosen - 1] as String?;
    print("Your Choosen Tablet is $finalProductDetails");
  }
}
