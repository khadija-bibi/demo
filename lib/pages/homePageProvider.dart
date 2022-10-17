import 'dart:math';

import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier {
  bool ?isSquare;
  String message = "";

  void checkSquare(int num) {
    var s = sqrt(num);

    if (s is int || s == s.roundToDouble()) {
      message = "$num is a square number";
      notifyListeners();
    }

    else {
      message = "$num is not a square number";
    }
    notifyListeners();
  }


}


