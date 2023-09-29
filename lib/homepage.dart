import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube/home_page_elements/categories.dart';

import 'feed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Image.asset(
            "assets/img.png",
            fit: BoxFit.fill,
          ),
          title: Flexible(
            child: Text(
              "YouTube",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        body:  const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Categories(),
              Feed(),
            ],
          ),
        ),
      ),
    );
  }
}
