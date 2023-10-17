import 'dart:io';
import 'informationoforder.dart';
import 'product.dart';

class Payment extends InformationOfOrder {
  int? visaId;
  int? passOfVisa;
  String? paymentWay;
  Product? p1;

  void PaymentWay() {
    print("Choodse 'Cash' or 'Visa'");
    paymentWay = stdin.readLineSync();
    TypeOfPayment();
  }

  void TypeOfPayment() {
    if (paymentWay == "Cash") {
      print(
          "Your product and price is ${p1!.finalProductDetails} , Press Ok to confirm");
      String? confirmCashWay = stdin.readLineSync();
    } else {
      VisaWay();
    }
  }

  void VisaWay() {
    print("Your product and price is ${p1!.finalProductDetails}");
    print("Enter your Visa Id");
    visaId = int.parse(stdin.readLineSync()!);
    print("Enter your Visa Password");
    passOfVisa = int.parse(stdin.readLineSync()!);
    print("Your Order is Done!!");
  }
}
