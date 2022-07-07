// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagess/explore.dart';
import 'package:flutter_application_1/pagess/home_screen.dart';
import 'package:flutter_application_1/pagess/setting_screen.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [
    const HomeScreen(),
    const explorer(),
    const SettingScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 215, 229),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 104, 0, 96),
        title: const Center(
          child: Text(
            'Book Fest',
            style:
                TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Image(image: AssetImage("assets/images/spongeBOB.png")),
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white70,
        backgroundColor: Color.fromARGB(255, 249, 118, 164),
        height: 50,
        buttonBackgroundColor: Colors.blue[300],
        onTap: onTap,
        items: [
          Icon(
            Icons.home,
            size: 25,
          ),
          Icon(Icons.explore),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
