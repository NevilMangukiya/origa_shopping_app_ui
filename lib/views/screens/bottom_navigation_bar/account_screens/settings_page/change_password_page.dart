// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../globals/globals.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Change Password",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Confirm your current password and enter\nyour new password to continue.",
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: Color(0xff6B738D),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Current Password",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: greyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 20, top: 30),
                hintText: "xxxxxxxxx",
                hintStyle: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.bold),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "New Password",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: greyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 20, top: 30),
                hintText: "xxxxxxxxx",
                hintStyle: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.bold),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Repeat Password",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: greyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 20, top: 30),
                hintText: "SDDSgffdsfeduhjgh#5326",
                hintStyle: GoogleFonts.montserrat(
                    fontSize: 13, fontWeight: FontWeight.bold),
                suffixIcon: Icon(CupertinoIcons.eye_slash_fill),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('settings_page');
              },
              style: ElevatedButton.styleFrom(
                elevation: 2,
                shadowColor: Colors.black,
                primary: color,
                onPrimary: Colors.white,
                splashFactory: NoSplash.splashFactory,
                fixedSize: Size(_width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text("Change Password"),
            ),
          ],
        ),
      ),
    );
  }
}
