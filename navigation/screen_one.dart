import 'package:flutter/material.dart';
import 'package:navigation_demo/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  var x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1",
         style: TextStyle(fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Value =>$x",
              style: TextStyle(fontSize: 40),
            ),
            IconButton(
              onPressed: () async{
                x=await (Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ScreenTwo(value:x))));
               setState(() {
                 
               });
              },
              icon: Icon(
                Icons.forward,
                size: 100,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          x+=1;
        });
      },
      child: Icon(Icons.add,size: 50,),),
    );
  }
}
