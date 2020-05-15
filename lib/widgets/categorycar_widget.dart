import 'package:flutter/material.dart';
// import '../color.dart';
import 'package:google_fonts/google_fonts.dart';
class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  CategoryCard({
    @required this.title,
    @required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(15.0),
          elevation: 6.0,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10.0, left: 15, right: 15.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  imagePath,
                ),
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}