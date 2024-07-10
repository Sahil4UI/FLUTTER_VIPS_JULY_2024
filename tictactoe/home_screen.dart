import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String value = "X";
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
                const Text("Select Choice = > "),
                DropdownButton(
                  value: value,
                  items: const [
                  DropdownMenuItem(value: "0", child: Text("0")),
                  DropdownMenuItem(value: "X", child: Text("X"))
                ], onChanged: (val) {
                      setState(() {
                        value = val!;
                      });
                }),
              ],
            ),
            OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Start Game",
                  style: TextStyle(fontSize: 25, color: Colors.black87),
                ))
          ],
        )),
      ),
    );
  }
}
