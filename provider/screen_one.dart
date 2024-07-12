import 'package:flutter/material.dart';
import 'package:navigation_demo/counter_provider.dart';
import 'package:navigation_demo/screen_two.dart';
import 'package:provider/provider.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<CounterProvider>(context);
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
              "Value =>${obj.x}",
              style: TextStyle(fontSize: 40),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ScreenTwo()));
              },
              icon: const Icon(
                Icons.forward,
                size: 100,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:obj.plus,
      child: Icon(Icons.add,size: 50,),),
    );
  }
}
