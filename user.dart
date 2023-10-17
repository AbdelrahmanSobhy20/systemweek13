import 'dart:io';

import 'category.dart';
import 'product.dart';

class User {
  late String username;
  late String _password;
  int? phonenumber;
  String? usertype;

  set password(String password) => _password = password;
  String get password => _password;

  void Entering() {
    print("Choose [New User - Old User]");
    usertype = stdin.readLineSync();
    TypesOfUsers();
  }

  void TypesOfUsers() {
    if (usertype == "New User") {
      NewUser();
    } else {
      OldUser(name: username, pass: password);
    }
  }

  void NewUser() {
    print("Enter UserName");
    username = stdin.readLineSync()!;
    print("Enter Password");
    _password = stdin.readLineSync()!;
    print("Enter Phonenumber");
    phonenumber = int.parse(stdin.readLineSync()!);
    print("Your New User is Done!");
  }

  void OldUser({required String name, required String pass}) {
    this.username = name;
    this._password = pass;
    print("Hallo $name , Nice to meet you again!");
  }
}
