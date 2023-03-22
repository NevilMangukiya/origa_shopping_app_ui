// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('forgot_password_page');
          },
          child: Icon(
            Icons.arrow_back,
            color: color,
          ),
        ),
        title: Text(
          "Reset Your Password",
          style: GoogleFonts.montserrat(
              color: color, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Enter your new password to continue.",
                style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "New Password",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                suffixIcon: Icon(Icons.remove_red_eye),
                contentPadding: EdgeInsets.only(left: 20, top: 20),
                hintText: "xxxx xxxx xxxx xxxx",
                hintStyle: GoogleFonts.montserrat(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Minimum 8 characters",
              style: GoogleFonts.montserrat(color: greyColor, fontSize: 11),
            ),
            SizedBox(height: 20),
            Text(
              "Repeat Password",
              style: GoogleFonts.montserrat(
                  color: greyColor, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                suffixIcon: Icon(Icons.remove_red_eye),
                contentPadding: EdgeInsets.only(left: 20, top: 20),
                hintText: "ABC1245#zxc@876",
                hintStyle: GoogleFonts.montserrat(
                    color: greyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
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
                height: 45,
                margin: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Color(0xff001D70),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Save Password",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
