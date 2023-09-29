import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton(this.catname, {super.key});
  final String catname;
  @override
  Widget build(context) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor:  Colors.black54,
        ),
        child: Text(
          catname,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
        ));
  }
}
