import 'dart:io';
import 'informationoforder.dart';
import 'payment.dart';
import 'product.dart';

class Order {
  String? address;
  int? noOfPiceisOfProduct;
  Product? o1;
  String? confirmation;
  //InformationOfOrder? orderinfo;
  //Payment? toPayment;

  void CompleteOrder() {
    print("Complete Your Order! --- Enter your Address");
    address = stdin.readLineSync();
    print("How many pieces of product do you want?");
    noOfPiceisOfProduct = int.parse(stdin.readLineSync()!);
    ConfirmOrder();
    //toPayment!.PaymentWay();
  }

  void ConfirmOrder() {
    print(
        "Your product : ${o1!.finalProductDetails} and number of Pieces: $noOfPiceisOfProduct with address: $address");
    print("****************");
    print("To confirm that press (OK)! --- OR (Edit) to change it.");
    confirmation = stdin.readLineSync();
    //orderinfo!.CorrectInformation();
  }
}
