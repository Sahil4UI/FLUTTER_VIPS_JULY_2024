import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({super.key,required this.value});
  late int value;

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2",
        
              style: TextStyle(fontSize: 40),),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "x=>${widget.value}",
              style: TextStyle(fontSize: 40),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context,widget.value);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 100,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        setState(() {
          widget.value+=1;
        });
      }
      ),
    );
  }
}
