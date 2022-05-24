import 'package:flutter/cupertino.dart';

class MyBottomProvider extends ChangeNotifier {
  int index = 0;

  changeIndex(int i) {
    index = i;
    notifyListeners();
  }
}
