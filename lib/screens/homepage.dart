import 'package:flutter/material.dart';
import 'package:furniture_app/color.dart';
import 'package:furniture_app/screens/detailPage.dart';
import 'package:furniture_app/widgets/categorycar_widget.dart';
import 'package:furniture_app/widgets/discount_card.dart';
import 'package:furniture_app/widgets/headline_widget.dart';
import 'package:furniture_app/widgets/trending_card.dart';
// import '../color.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Furniture Shop',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart),
                      tooltip: 'Cart',
                      onPressed: () {
                        print('Cart has been pressed');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Get unique furniture from home',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: daryGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Container(
                  height: 45,
                  child: TextField(
                    style: TextStyle(color: Colors.blue),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      labelText: 'Search unique furniture ...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onChanged: (String value) {
                      print(value);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Categories',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
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
              ),
              SizedBox(
                height: 15.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed(
                          DetailPage.routeName,
                        );
                      },
                      child: CategoryCard(
                        title: 'Living Room',
                        imagePath: 'assets/images/living_room.png',
                      ),
                    ),
                    CategoryCard(
                      title: 'Bath Room',
                      imagePath: 'assets/images/bathroom.png',
                    ),
                    CategoryCard(
                      title: 'WorkSpace',
                      imagePath: 'assets/images/workspace.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Headline(
                headLineTitle: 'Today\'s Promo',
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    DiscountCard(
                      imagePath: 'assets/images/table.jpg',
                    ),
                    DiscountCard(
                      imagePath: 'assets/images/chair.jpg',
                    ),
                    DiscountCard(
                      imagePath: 'assets/images/sofa.jpg',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Headline(
                headLineTitle: 'Trending Furniture',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TrendingCard(
                      image: 'assets/images/sofa.jpg',
                    ),
                    TrendingCard(
                      image: 'assets/images/chair.jpg',
                    ),
                    TrendingCard(
                      image: 'assets/images/table.jpg',
                    ),
                    TrendingCard(
                      image: 'assets/images/wholespace.jpg',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
