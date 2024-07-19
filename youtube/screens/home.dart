import 'package:flutter/material.dart';
import 'package:flutter_application_2/services/yt_services.dart';
import 'package:timeago/timeago.dart' as timeago;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  YtServices obj = new YtServices();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List data;
    return Scaffold(
      body: Container(
        child: FutureBuilder(
            future: obj.getHttp(),
            builder: (context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                data = snapshot.data["items"];
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ...data.map((element) {
                        return Card(
                          child: Column(
                            children: [
                              Image.network(element["snippet"]["thumbnails"]
                                  ["high"]["url"]),
                              Text(
                                element["snippet"]["title"],
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                children: [
                                  Text(element["snippet"]["channelTitle"]),
                                  SizedBox(width: 20,),
                                  Text(timeago.format(DateTime.parse(element["snippet"]["publishedAt"])).toString())
                                ],
                              ),
                              SizedBox(height: 20,)
                            ],
                          ),
                        );
                      })
                    ],
                  ),
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
