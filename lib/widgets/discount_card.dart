import 'package:flutter/material.dart';
import 'package:furniture_app/color.dart';
// import 'package:furniture_app/widgets/categorycar_widget.dart';
// import '../color.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountCard extends StatelessWidget {
  final String imagePath;
  DiscountCard({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 160,
        width: 280,
        decoration: BoxDecoration(
            color: governorBay, borderRadius: BorderRadius.circular(15.0)),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                '$leading',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: dullWhite,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40.0,
              left: 140,
              child: Image.asset(
                imagePath,
                height: 90,
                width: 120,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 120,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.grey.shade200),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('15 May 2020'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
