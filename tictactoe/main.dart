import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'screen_changer.dart';
import 'tic_tac_toe.dart';

void main() {
  runApp(
   const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenChanger(),
    )
  );
}
