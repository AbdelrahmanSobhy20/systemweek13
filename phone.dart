import 'dart:io';
import 'product.dart';

class Phone extends Product {
  String? PhoneSelected() {
    int? phoneChoosen;
    Map<String, int> phonesDetails = {
      "Iphone12": 800,
      "Iphone13": 900,
      "Iphone14": 1100,
      "Iphone15": 1200
    };
    print(phonesDetails);
    phoneChoosen = int.parse(stdin.readLineSync()!);
    finalProductDetails = phonesDetails[phoneChoosen - 1] as String?;
    print("Your Choosen Phone is $finalProductDetails");
  }
}
