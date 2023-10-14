import 'dart:io';

import 'product.dart';

class Category {
  List<String> typeOfCategories = ["Phones", "Tablets", "Accesories"];
  Product? p1;
  String? choosenCategoty;

  String? choseCategory() {
    print("choose Category : $typeOfCategories");
    choosenCategoty = stdin.readLineSync();
    p1!.CategoryType();
  }
}
