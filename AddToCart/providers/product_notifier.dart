import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/products_data.dart';

class ProductNotifier extends ChangeNotifier {
  List temp = [...products_list];

  searchItem(String value) {
    if (value.isNotEmpty) {
      temp.forEach((element) {
        if (!element.p_name.toLowerCase().contains(value.toLowerCase())) {
          products_list.remove(element);
        }
      });
    }
    else{
      products_list =[...temp];
    }

    print("Function called : ${value}");

    notifyListeners();
  }
}
