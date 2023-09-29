import 'package:flutter/material.dart';
import 'package:youtube/home_page_elements/categories.dart';

import 'feed.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Categories(),
          Feed(),
        ],
      ),
    );
  }
}
