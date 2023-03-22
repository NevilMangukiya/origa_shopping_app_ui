// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class GroupMembersPage extends StatefulWidget {
  const GroupMembersPage({Key? key}) : super(key: key);

  @override
  State<GroupMembersPage> createState() => _GroupMembersPageState();
}

class _GroupMembersPageState extends State<GroupMembersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   backgroundColor: Colors.white,
        //   foregroundColor: Colors.black,
        //   title: Text(
        //     "Group Members",
        //     style: GoogleFonts.montserrat(fontSize: 15),
        //   ),
        //   elevation: 0,
        // ),
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 80),
                Center(
                  child: Text(
                    "Group Members",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Text(
              "25 Members",
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: 10),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search for a someone...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 22,
                  ),
                  isDense: true,
                  filled: true,
                  hintStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  fillColor: Colors.grey.shade200,
                  contentPadding: EdgeInsets.only(left: 10, right: 20, top: 24),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/person/p1.jpg"),
                ),
                SizedBox(width: 10),
                Text(
                  "Ahmed Emad",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child: Text(
                    "Admin",
                    style:
                        GoogleFonts.montserrat(color: greyColor, fontSize: 10),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/person/p2.jpg"),
                ),
                SizedBox(width: 10),
                Text(
                  "Fahd abdul",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/person/p1.jpg"),
                ),
                SizedBox(width: 10),
                Text(
                  "Ahmed Emad",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/person/p3.jpg"),
                ),
                SizedBox(width: 10),
                Text(
                  "Ablee Rehman",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/person/p4.jpg"),
                ),
                SizedBox(width: 10),
                Text(
                  "Omar Emad",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}
