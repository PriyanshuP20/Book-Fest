// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 205, 255),
        body: ContactUs(
          textColor: Colors.green,
          companyColor: Color.fromARGB(255, 0, 98, 255),
          taglineColor: Color.fromARGB(255, 255, 0, 0),
          cardColor: Color.fromARGB(255, 184, 255, 179),
          logo: AssetImage("assets/images/spongeBOB.png"),
          email: 'adoshi26.ad@gmail.com',
          companyName: 'Book Fest',
          phoneNumber: '+91123456789',
          dividerThickness: 2,
          website: 'https://abhishekdoshi.godaddysites.com',
          githubUserName: 'AbhishekDoshi26',
          linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
          tagLine: 'eBook Application',
          twitterHandle: 'AbhishekDoshi26',
        ),
      ),
    );
  }
}
