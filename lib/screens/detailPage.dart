import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:furniture_app/color.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 26.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
