import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/match_service.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  var data;
  MatchService obj = MatchService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.sports_cricket,
          size: 50,
        ),
        title: const Text(
          "CrickPedia",
          style: TextStyle(fontSize: 30),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Player Name",
                  hintStyle: TextStyle(fontSize: 30)),
              onSubmitted: (value) async {
                data = await obj.getId(value);
                setState(() {});
              },
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              (data == null)
                  ? const CircularProgressIndicator()
                  : CircleAvatar(
                      backgroundImage: NetworkImage(data["data"]["playerImg"]),
                      radius: 150,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
