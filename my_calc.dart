import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dart_eval/dart_eval.dart';

class MyCalc extends StatefulWidget {
  const MyCalc({super.key});

  @override
  State<MyCalc> createState() => _MyCalcState();
}
class _MyCalcState extends State<MyCalc> {
  TextEditingController ctrl = TextEditingController();
  String result = "";
  bool isOpr = false;
  List<List> btnsTxt = [
    ["7", "8", "9", "+"],
    ["4", "5", "6", "-"],
    ["1", "2", "3", "*"],
    ["C", "0", "=", "/"]
  ];

  myCalc(String btnText)
  {
       if(btnText=="C")
       {
            result = "";
       }
       else if(btnText =="=")
       {
            result=eval(result).toString();
       }
       else if (["+","-","*","/"].contains(btnText)){
        if (isOpr==true)
        {
            result = result.substring(0,result.length-1)+btnText;
        }
        else
        {
              result+=btnText;
        }
 
          isOpr = true;

       }
       else{
          result+=btnText;
          isOpr = false;
       }
       ctrl.text = result;
        setState(() {
              
            });
       
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.calculate,
          size: 50,
        ),
        title: const Text("Calculator"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 204, 220, 245),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: ctrl,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                  hintText: "0",
                  hintStyle: TextStyle(
                    fontSize: 40,
                  )),
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            ...btnsTxt.map((element) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...element.map((el) {
                    return ElevatedButton(
                      onPressed: () {
                        myCalc(el);
                      },
                      child: Text(el,
                      style: TextStyle(
                        fontSize: 30
                      ),),
                      style: ButtonStyle(
                        backgroundColor: (["+","-","/","*"].contains(el))?
                        WidgetStatePropertyAll(Colors.orange):
                        WidgetStatePropertyAll(Colors.blue.shade50),
                        padding: WidgetStatePropertyAll(EdgeInsets.all(30)),
                        side: WidgetStatePropertyAll(BorderSide(color: Colors.black)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ))
                        
                      ),
                    );
                  })
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
