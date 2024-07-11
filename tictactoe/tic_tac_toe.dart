import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key,required this.choice});
  final String choice;

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List data = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
  late List temp;
  late String cpuChoice;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    temp = List.of(data);
    (widget.choice=="X")?cpuChoice = "0":cpuChoice="X";
  }
  playerMove(pos)
  {
      data[pos]=widget.choice;
      setState(() {
        
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.games),
        title: Text("Tic Tac Toe"),
      ),
      body: Column(
        children: [
          Text("YOUR CHOICE IS : ${widget.choice}",
          style: TextStyle(
            fontSize: 25
          ),),
          Container(
            height: MediaQuery.of(context).size.height/2,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 9,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                      print("Button Tapped ${data[index]}");
                      playerMove(index);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        data[index],
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
                  )
                );
              },
              
            ),
          ),
        ],
      ),
    );
  }
}
