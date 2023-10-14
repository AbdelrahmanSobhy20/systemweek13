import 'dart:io';
import 'order.dart';

class InformationOfOrder extends Order {
  void CorrectInformation() {
    if (confirmation == "Ok") {
      print("Choose the way of payment ,please");
    } else {
      WrongInformation();
      print("Choose the way of payment ,please");
    }
  }

  void WrongInformation() {
    print("Enter the Changes at number of Pieces and address");
    print("New number of pieces:");
    noOfPiceisOfProduct = int.parse(stdin.readLineSync()!);
    print("Changes at address:");
    address = stdin.readLineSync();
  }
}
