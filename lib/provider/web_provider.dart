import 'package:flutter/material.dart';

class WebProvider extends ChangeNotifier {
  double progress = 1;
  List<String> addBookMarks = [];

  void addBookmark(String url) {
    addBookMarks.add(url);
    notifyListeners();
  }

  void onChangeProgress(int progress) {
    this.progress = progress / 100;
    notifyListeners();
  }
}
