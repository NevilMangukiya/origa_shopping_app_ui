// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../globals/globals.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Settings",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: 5),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("my_favorites_page");
              },
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.heart_solid,
                    color: Colors.pink,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "My Favorites",
                    style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  CupertinoIcons.bell_fill,
                  color: Colors.pink,
                ),
                SizedBox(width: 10),
                Text(
                  "Push Notifications",
                  style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Switch(
                  value: value,
                  onChanged: (val) {
                    setState(() {
                      value = val;
                    });
                  },
                  thumbColor: MaterialStateColor.resolveWith(
                    (states) =>
                        (value == false) ? Colors.white54 : Color(0xff00F300),
                  ),
                  activeColor: Colors.white,
                  inactiveTrackColor: Colors.grey,
                  trackColor: MaterialStateColor.resolveWith(
                    (states) =>
                        (value == false) ? Colors.grey : Color(0xff00F300),
                  ),
                  activeThumbImage: AssetImage(
                    "assets/images/done.png",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                showLanguageModalSheet();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.pink,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Change Language",
                    style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("change_password_page");
              },
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.lock_fill,
                    color: Colors.pink,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Change Password",
                    style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  showLanguageModalSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => Container(
        height: 250,
        padding: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Language",
              style: GoogleFonts.montserrat(
                  color: color, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Choose your language to continue.",
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.pink,
                  child: Icon(
                    Icons.done,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "English",
                  style: GoogleFonts.montserrat(
                      color: greyColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey.shade200,
                ),
                SizedBox(width: 10),
                Text(
                  "Arabic",
                  style: GoogleFonts.montserrat(
                      color: greyColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Spacer(),
            Container(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: color,
                ),
                child: Text(
                  "Confirm Language",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
