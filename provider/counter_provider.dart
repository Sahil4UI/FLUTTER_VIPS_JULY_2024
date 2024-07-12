

import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int x=0;
  void plus()
  {
    x+=1;
    notifyListeners();
  }
}