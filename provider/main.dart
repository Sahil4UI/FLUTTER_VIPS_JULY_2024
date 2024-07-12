import 'package:flutter/material.dart';
import 'package:navigation_demo/counter_provider.dart';
import 'package:navigation_demo/screen_one.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CounterProvider>(create: (_) => CounterProvider()),
    ],
    child: MaterialApp(
      theme: ThemeData.dark(),
      home: ScreenOne(),
    ),
  ));
}
