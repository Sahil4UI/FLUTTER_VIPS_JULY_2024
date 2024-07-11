import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.onTapFunction});
  final Function onTapFunction;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String value = "X";
  TextStyle textStyle = const TextStyle(fontSize: 25);

  String playerChoice = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.games_rounded,
                size: 200,
              ),
              const Text(
                "TIC TAC TOE",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Select Choice = > ",
                    style: textStyle,
                  ),
                  DropdownButton(
                      value: value,
                      items: [
                        DropdownMenuItem(
                            value: "0",
                            child: Text(
                              "0",
                              style: textStyle,
                            )),
                        DropdownMenuItem(
                            value: "X",
                            child: Text(
                              "X",
                              style: textStyle,
                            ))
                      ],
                      onChanged: (val) {
                        setState(() {
                          value = val!;
                        });
                      }),
                ],
              ),
              OutlinedButton(
                onPressed: () {
                  widget.onTapFunction(value);
                },
                child: const Text(
                  "Start Game",
                  style: TextStyle(fontSize: 25, color: Colors.black87),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
