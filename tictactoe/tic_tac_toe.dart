import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List data = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.games),
        title: Text("Tic Tac Toe"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          ...data.map((el) {
            return InkWell(
              onTap: () {
                print("Button Tapped");
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  el,
                   style: TextStyle(fontSize: 30),
                ),
                
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 240, 227, 187),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          }),
          
          Text("Result : ",
          style: TextStyle(
            fontSize: 30
          ),)
        ],
      ),
    );
  }
}
