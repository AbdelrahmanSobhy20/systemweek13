import 'dart:io';
import 'order.dart';

class Product {
  String? finalProductDetails;
  // Order? toOrder;
  List<String> typeOfCategories = ["Phones", "Tablets", "Accesories"];
  String? choosenCategoty;

  void CategoryType() {
    print("choose Category : $typeOfCategories");
    choosenCategoty = stdin.readLineSync();
    if (choosenCategoty == "Phones") {
      PhoneSelected();
    } else if (choosenCategoty == "Tablets") {
      TabletSelected();
    } else if (choosenCategoty == "Accesories") {
      AccesoriesSelected();
    }
    print("Go to complete your order");
    // toOrder!.CompleteOrder();
  }

  void PhoneSelected() {
    Map<String, int> phonesDetails = {
      "Iphone12": 800,
      "Iphone13": 900,
      "Iphone14": 1100,
      "Iphone15": 1200
    };
    print(phonesDetails);
    int phoneChoosen = int.parse(stdin.readLineSync()!);
    finalProductDetails = phonesDetails[phoneChoosen] as String?;
    print("Your Choosen Phone is ${phonesDetails[phoneChoosen]}");
  }

  void TabletSelected() {
    Map<String, int> tabletsDetails = {
      "iPad mini": 500,
      "iPad Pro": 800,
      "iPad Ait": 1000,
      "iPad Air2": 1150
    };
    print(tabletsDetails);
    int tabletChoosen = int.parse(stdin.readLineSync()!);
    finalProductDetails = tabletsDetails[tabletChoosen] as String?;
    print("Your Choosen Tablet is $tabletChoosen");
  }

  void AccesoriesSelected() {
    Map<String, int> accesoriesDetails = {
      "Charger": 50,
      "Cover": 10,
      "AirBuds": 300,
      "Smart Watch": 500
    };
    print(accesoriesDetails);
    int accesoriesChoosen = int.parse(stdin.readLineSync()!);
    finalProductDetails = accesoriesDetails[(accesoriesChoosen - 1)] as String?;
    print("Your Choosen Accesory is ${accesoriesDetails[accesoriesChoosen]}");
  }
}
