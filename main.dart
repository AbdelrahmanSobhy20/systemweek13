import 'dart:io';

import 'category.dart';
import 'informationoforder.dart';
import 'order.dart';
import 'payment.dart';
import 'product.dart';
import 'user.dart';

main() {
  User acc = User();
  acc.username = "Ahmed Mohamed";
  acc.password = "123456";
  Product x1 = Product();
  Order o1 = Order();
  Payment p1 = Payment();
  InformationOfOrder info = InformationOfOrder();

  acc.Entering();
  x1.CategoryType();
  o1.CompleteOrder();
  p1.PaymentWay();
  info.CorrectInformation();
}
