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
    product1?.phoneProduct();
    product2?.tabletProduct();
    product3?.accesoriesProduct();
    print("Go to complete your order");
    toOrder!.CompleteOrder();
  }
}
