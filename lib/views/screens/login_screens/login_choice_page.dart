// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class LoginChoicePage extends StatefulWidget {
  const LoginChoicePage({Key? key}) : super(key: key);

  @override
  State<LoginChoicePage> createState() => _LoginChoicePageState();
}

class _LoginChoicePageState extends State<LoginChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          "assets/images/i4.png",
          scale: 2,
        ),
        SizedBox(height: 20),
        Image.asset(
          "assets/images/logo/origa.png",
          scale: 2,
        ),
        SizedBox(height: 10),
        Text(
          "Welcome To origa!",
          style: GoogleFonts.montserrat(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          textAlign: TextAlign.center,
          "Enjoy the shopping on our app\nwith new product & offers.",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w300,
              fontSize: 13,
              color: Color(0xff6B738D)),
        ),
        SizedBox(height: 25),
        InkWell(
          onTap: () {
            setState(() {
              login = 0;
            });
            Navigator.of(context).pushReplacementNamed('login_page');
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            height: 50,
            margin: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 5,
                  spreadRadius: 0,
                  offset: Offset(0, 2),
                )
              ],
              color: Color(0xff001D70),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Create New Account",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Or",
          style: GoogleFonts.montserrat(
            fontSize: 13,
          ),
        ),
        SizedBox(height: 15),
        InkWell(
          onTap: () {
            setState(() {
              login = 1;
            });
            Navigator.of(context).pushReplacementNamed('login_page');
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            height: 50,
            margin: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xffFF265E4D),
                  blurRadius: 2,
                  spreadRadius: 0,
                ),
              ],
              color: Color(0xffFF265E),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Login",
              style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Or Continue With",
          style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    // color: Color(0xffF2F2F23),
                    blurRadius: 1.5,
                    spreadRadius: 0.1,
                    color: Colors.blueGrey,
                    offset: Offset(0, 2),
                  ),
                ],
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.g_mobiledata),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    // color: Color(0xffF2F2F23),
                    blurRadius: 1.5,
                    spreadRadius: 0.1,
                    color: Colors.blueGrey,
                    offset: Offset(0, 2),
                  ),
                ],
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.facebook,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    // color: Color(0xffF2F2F23),
                    blurRadius: 1.5,
                    spreadRadius: 0.1,
                    color: Colors.blueGrey,
                    offset: Offset(0, 2),
                  ),
                ],
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.apple_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
