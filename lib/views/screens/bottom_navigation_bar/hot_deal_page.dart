// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class HotDealPage extends StatefulWidget {
  const HotDealPage({Key? key}) : super(key: key);

  @override
  State<HotDealPage> createState() => _HotDealPageState();
}

class _HotDealPageState extends State<HotDealPage> {
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
          "Hot Deals",
          style: GoogleFonts.montserrat(
              color: Color(0xff242C46),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            // width: 450,
            height: 180,

            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ca1.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black),
          ),
          Container(
            // width: 450,
            height: 180,

            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ca4.jpeg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black),
          ),
          Container(
            // width: 450,
            height: 180,

            margin: EdgeInsets.only(top: 20, left: 20, right: 20),

            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ca2.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
