// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../globals/globals.dart';
import 'bottom_navigation_bar/account_screens/account_page.dart';
import 'bottom_navigation_bar/active_pages/active_circle_page.dart';
import 'bottom_navigation_bar/bottom_home_page.dart';
import 'bottom_navigation_bar/communities_screens/communities_page(70).dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int activeIndex = 0;
  int currentIndex = 0;

  CarouselController controller = CarouselController();

  static const List<Widget> _widgetOptions = <Widget>[
    BottomHomePage(),
    ActiveCirclePage(),
    CommunitiesPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: Center(
        child: _widgetOptions.elementAt(currentIndex),
      ),
    );
  }

  bottomNavigationBar() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        backgroundColor: color,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500, color: greyColor),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home", backgroundColor: color),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: "Active Circles",
              backgroundColor: color),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_rounded),
              label: "Communication",
              backgroundColor: color),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account",
              backgroundColor: color),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.7;

    Path path0 = Path();
    path0.moveTo(size.width * 0.2175000, size.height * 0.1885714);
    path0.lineTo(size.width * 0.5616667, size.height * 0.1885714);
    path0.lineTo(size.width * 0.5635417, size.height * 0.5771429);
    path0.lineTo(size.width * 0.3133333, size.height * 0.5810714);
    path0.lineTo(size.width * 0.2795833, size.height * 0.4460714);
    path0.lineTo(size.width * 0.2164583, size.height * 0.4460714);
    path0.lineTo(size.width * 0.2175000, size.height * 0.1885714);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}