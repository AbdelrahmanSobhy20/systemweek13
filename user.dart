import 'dart:io';

import 'category.dart';

class User {
  late String username;
  late String _password;
  int? phonenumber;
  String? usertype;
  Category c1 = Category();

  set password(String password) => _password = password;
  String get password => _password;

  // void Entering() {
  //   print("Choose [New User - Old User]");
  //   usertype = stdin.readLineSync();
  //   TypesOfUsers();
  //   c1.choseCategory();
  // }

  // void TypesOfUsers() {
  //   if (usertype == "New User") {
  //     NewUser();
  //   } else {
  //     OldUser(name: username, pass: _password);
  //   }
  // }

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
    this._password = pass;
    this.username = name;
    print("Hallo $name , Nice to meet you again!");
  }
}
