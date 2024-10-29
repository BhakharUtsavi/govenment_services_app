import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  bool noInternet = true;

  void changeConnectionStatus(bool status) {
    this.noInternet = status;
    notifyListeners();
  }
}