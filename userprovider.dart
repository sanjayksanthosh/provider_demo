import 'package:flutter/material.dart';

class userproviderclass extends ChangeNotifier {
  String name = "";

  void addname(String username) {
    name = username;
    notifyListeners();
  }
}
