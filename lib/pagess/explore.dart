// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../modelss/book.dart';
import 'home_screen.dart';

class explorer extends StatefulWidget {
  const explorer({Key? key}) : super(key: key);

  @override
  State<explorer> createState() => _explorerState();
}

class _explorerState extends State<explorer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D212B),
        centerTitle: true,
        title: Text(
          "Explore  Our Books",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Books For You....",
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 500,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: BookDetail.listbooks.length - 2,
                itemBuilder: (context, i) => RecentUpdate(
                  detail: BookDetail.listbooks[i + 2],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class BookData {
  late String bookcover;
  late String bookname;
  late String author;
  late String description;
  late double rating;

  BookData(
    this.bookcover,
    this.bookname,
    this.author,
    this.description,
    this.rating,
  );
}
