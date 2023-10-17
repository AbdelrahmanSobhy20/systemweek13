import 'dart:io';

import 'product.dart';

class Accesories extends Product {
  String? AccesoriesSelected() {
    int? accesoriesChoosen;
    Map<String, int> accesoriesDetails = {
      "Charger": 50,
      "Cover": 10,
      "AirBuds": 300,
      "Smart Watch": 500
    };
    print(accesoriesDetails);
    accesoriesChoosen = int.parse(stdin.readLineSync()!);
    finalProductDetails = accesoriesDetails[accesoriesChoosen - 1] as String?;
    print("Your Choosen Accesory is $finalProductDetails");
  }
}
