import 'dart:io';

import 'category.dart';
import 'user.dart';

main() {
  User acc = User();
  // oldacc.username = "Ahmed MAhoud";
  // oldacc.password = "123456";
  Category c1 = Category();

  void Entering() {
    print("Choose [New User - Old User]");
    String? usertype = stdin.readLineSync();
    String? TypesOfUsers() {
      if (acc.usertype == "New User") {
        acc.NewUser();
      } else {
        acc.OldUser(name: "Ahmed Mahmoud", pass: "123456");
      }
    }

    c1.choseCategory();
  }

  Entering();
}
