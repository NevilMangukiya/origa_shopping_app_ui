// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../globals/globals.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
            ),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('menu_page');
            },
            child: Icon(Icons.arrow_back),
          ),
          title: Text(
            "Notifications",
            style: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 0.1),
          ),
        ),
        body: Column(children: [
          SizedBox(height: 10),
          ...notification
              .map(
                (e) => Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 10),
                  height: 95,
                  width: width,
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.pink.shade100,
                        child: Icon(
                          Icons.add_alert_rounded,
                          size: 18,
                          color: Colors.pink,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "25 min ago",
                            style: GoogleFonts.montserrat(
                                color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(height: 5),
                          Text(e.name,
                              style: GoogleFonts.montserrat(
                                  color: color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          SizedBox(height: 5),
                          Text(
                            e.description,
                            style: GoogleFonts.montserrat(
                                color: Colors.blueGrey, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ]));
  }
}

class Notifications {
  final String name;
  final String description;

  Notifications({
    required this.name,
    required this.description,
  });
}

List notification = [
  Notifications(
      name: "Hot Deal !",
      description: "Get 25% off when you buy (iphone X)\nin this circle."),
  Notifications(
      name: "New Notification",
      description: "Get 25% off when you buy (iphone X)\nin this circle."),
  Notifications(
      name: "Circle is Closed",
      description:
          "Your circle (iPhone X) hase been closed and you\nwill get your"
          "order within 48 hours."),
  Notifications(
      name: "New Notification",
      description: "Get 25% off when you buy (iphone X)\nin this circle."),
  Notifications(
      name: "Circle Invitation",
      description:
          "Ahmed Hossan invite you to join this\ncircle(iPhone X Friends 2022)"),
];