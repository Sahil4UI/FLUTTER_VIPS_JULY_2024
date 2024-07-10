import 'package:flutter/material.dart';
import 'package:tic_tac_toe/home_screen.dart';
import 'package:tic_tac_toe/tic_tac_toe.dart';

class ScreenChanger extends StatefulWidget {
  const ScreenChanger({super.key});

  @override
  State<ScreenChanger> createState() => _ScreenChangerState();
}

class _ScreenChangerState extends State<ScreenChanger> {
  var curr_screen = "home";
  @override
  Widget build(BuildContext context) {
    return (curr_screen=="home")?HomeScreen():TicTacToe();
  }
}