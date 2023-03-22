// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';
import '../../../models/categoryModel.dart';

class GroceryDetailPage extends StatefulWidget {
  const GroceryDetailPage({Key? key}) : super(key: key);

  @override
  State<GroceryDetailPage> createState() => _GroceryDetailPageState();
}

class _GroceryDetailPageState extends State<GroceryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: color,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Grocery Category",
          style: GoogleFonts.montserrat(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Text(
              "5 sub-categories",
              style: GoogleFonts.montserrat(
                  // color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: category2
                  .map(
                    (e) => InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed('grocery_category_page');
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(e.image),
                                ),
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.red, width: 3)),
                          ),
                          SizedBox(height: 5),
                          Text(
                            e.name,
                            style: GoogleFonts.montserrat(
                                color: color,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 13),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/tomato.png"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 3)),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Meat",
                      style: GoogleFonts.montserrat(
                          color: color,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/carrot.png"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 3)),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Bread & Bakery",
                      style: GoogleFonts.montserrat(
                          color: color,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
