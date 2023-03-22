// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed("login_page");
          },
          child: Icon(
            Icons.arrow_back,
            color: color,
          ),
        ),
        title: Text(
          "Verify Your Account",
          style: GoogleFonts.montserrat(
              color: color, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "We have sent you a verifiaction code\nto your phone number",
              style: GoogleFonts.montserrat(fontSize: 12),
            ),
            SizedBox(height: 10),
            Text(
              "+20 105 153 5486",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontWeight: FontWeight.bold, fontSize: 13),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.red,
                    border: Border.all(
                      color: greyColor.withOpacity(0.5),
                    ),
                  ),
                  child: Text(
                    "2",
                    style: GoogleFonts.montserrat(
                        color: color, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.red,
                    border: Border.all(
                      color: greyColor.withOpacity(0.5),
                    ),
                  ),
                  child: Text(
                    "1",
                    style: GoogleFonts.montserrat(
                        color: color, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.red,
                    border: Border.all(
                      color: greyColor.withOpacity(0.5),
                    ),
                  ),
                  child: Text(
                    "2",
                    style: GoogleFonts.montserrat(
                        color: color, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.red,
                    border: Border.all(
                      color: greyColor.withOpacity(0.5),
                    ),
                  ),
                  child: Text(
                    "9",
                    style: GoogleFonts.montserrat(
                        color: color, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.red,
                    border: Border.all(
                      color: greyColor.withOpacity(0.5),
                    ),
                  ),
                  child: Text(
                    "5",
                    style: GoogleFonts.montserrat(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.red,
                    border: Border.all(
                      color: greyColor.withOpacity(0.5),
                    ),
                  ),
                  child: Text(
                    "2",
                    style: GoogleFonts.montserrat(
                        color: color, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  if (isForgot == false) {
                    Navigator.of(context)
                        .pushReplacementNamed("complete_profile_page");
                  } else {
                    Navigator.of(context)
                        .pushReplacementNamed("reset_password_page");
                  }
                });
                // Navigator.of(context).pushNamed("complete_profile_page");
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                height: 45,
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
                  " Verify The Code",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Didn't receive your code yet?",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: greyColor,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Navigator.of(context).pushNamed("");
              },
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  height: 45,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/reset.png",
                        scale: 5,
                        color: color,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Resend Code",
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Color(0xff001D70),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
