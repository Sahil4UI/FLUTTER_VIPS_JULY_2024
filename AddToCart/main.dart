import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/cart_notifier.dart';
import 'package:flutter_application_1/providers/product_notifier.dart';
import 'package:flutter_application_1/screens/product_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<CartNotifier>
      (create: (_)=>CartNotifier()),
      ChangeNotifierProvider<ProductNotifier>
      (create: (_)=>ProductNotifier())
    ],
    child: const MaterialApp(home: ProductScreen(),),
    )
  );
}
