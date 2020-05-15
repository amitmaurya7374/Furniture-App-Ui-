import 'package:flutter/material.dart';
import 'package:furniture_app/color.dart';

import 'package:google_fonts/google_fonts.dart';

class Headline extends StatelessWidget {
  final String headLineTitle;
  Headline({this.headLineTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Text(
            headLineTitle,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Text(
            'View all ',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 14,
                color: governorBay,
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: governorBay,
          ),
        ],
      ),
    );
  }
}
