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
  var result = "";
  List<List> btnsTxt = [
    ["7", "8", "9", "+"],
    ["4", "5", "6", "-"],
    ["1", "2", "3", "*"],
    ["C", "0", "=", "/"]
  ];

  calc(String btnText)
  {
        print(btnText+" is called");
        if (!btnText.contains("C") || !btnText.contains("="))
        {
            print("not equals");
            result += btnText;
            // ctrl.value = result as TextEditingValue;
            print(result);
        }
        setState(() {
          
        });
      //  if (btnText.contains("="))
      //   {
      //     print(eval(result));
      //   }
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
          children: [
            TextField(
              controller: ctrl,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                  hintText:result,
                  hintStyle: TextStyle(
                    fontSize: 40,
                  )),
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 20,
            ),
            ...btnsTxt.map((element) {
              return Row(
                children: [
                  ...element.map((el) {
                    return ElevatedButton(
                      onPressed: () {
                        calc(el);
                      },
                      child: Text(el,
                      style: TextStyle(
                        fontSize: 30
                      ),),
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.all(39)),
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
