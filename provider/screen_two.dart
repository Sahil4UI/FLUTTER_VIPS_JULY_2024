import 'package:flutter/material.dart';
import 'package:navigation_demo/counter_provider.dart';
import 'package:provider/provider.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({super.key});
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2",
        
              style: TextStyle(fontSize: 40),),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "x=>${obj.x}",
              style: TextStyle(fontSize: 40),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 100,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: obj.plus
      ),
    );
  }
}
