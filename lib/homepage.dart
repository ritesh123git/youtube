import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube/explore.dart';
import 'package:youtube/history.dart';
import 'package:youtube/home.dart';
import 'package:youtube/subscriptions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  int pageIndex = 0;
  final pages = [
    const Home(),
    const Explore(),
    const Subscription(),
    const History(),
  ];

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Image.asset(
              "assets/yt_logo.png",
            ),
            title: Flexible(
              child: Text(
                "YouTube",
                style: GoogleFonts.gothicA1(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ),
          ),
          body: pages[pageIndex],
          bottomNavigationBar: buildMyNavBar(context)),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 30,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.explore,
                    color: Colors.white,
                    size: 30,
                  )
                : const Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.subscriptions_sharp,
                    color: Colors.white,
                    size: 30,
                  )
                : const Icon(
                    Icons.subscriptions_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.library_add_check_sharp,
                    color: Colors.white,
                    size: 30,
                  )
                : const Icon(
                    Icons.library_add_check_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
          ),
        ],
      ),
    );
  }
}
