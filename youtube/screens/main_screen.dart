import 'package:flutter/material.dart';

import 'home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens = [Home(),Text("Shorts"),Text("UserAccount")];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network("https://logos-world.net/wp-content/uploads/2020/04/YouTube-Logo.png"),
        leadingWidth: 150,
        actions: [
          IconButton(icon:Icon(Icons.cast),onPressed: (){},),
          IconButton(icon:Icon(Icons.notifications),onPressed: (){},),
          IconButton(icon:Icon(Icons.search),onPressed: (){},),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex ,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home) , label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "+"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "user")
      ],
      onTap: (value) {
          currentIndex=value;
          setState(() {
            
          });
      },
      ) ,

      body:screens[currentIndex],
    );
  }
}