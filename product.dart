import 'dart:io';
import 'accesories.dart';
import 'category.dart';
import 'order.dart';
import 'phone.dart';
import 'tablets.dart';

class Product extends Category {
  List<String>? productName;
  String? finalProductName;
  List<int>? price;
  int? finalProductPrice;
  Phone? product1;
  Tablets? product2;
  Accesories? product3;
  Order? toOrder;

  String? CategoryType() {
    if (choosenCategoty == "Phones") {
      product1?.phoneProduct();
    } else if (choosenCategoty == "Tablets") {
      product2?.tabletProduct();
    } else if (choosenCategoty == "Accesories") {
      product3?.accesoriesProduct();
    }
    print("Go to complete your order");
    toOrder!.CompleteOrder();
  }
}
