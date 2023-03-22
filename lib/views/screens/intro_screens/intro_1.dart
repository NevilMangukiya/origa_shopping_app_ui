// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../globals/globals.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  int activeIndex = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Image.asset(
          "assets/images/logo/origa.png",
          scale: 4,
        ),
      ),
      body: PageView(
        controller: controller,
        children: [
          Column(
            children: [
              Image.asset("assets/images/image.png"),
              SizedBox(height: 30),
              Text(
                "Enjoy Shopping",
                style: GoogleFonts.montserrat(
                    color: color, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "Enjoy the shopping on our app\nwith new product & offers.",
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 20),
              SmoothPageIndicator(
                onDotClicked: (i) {
                  setState(() {
                    activeIndex = i;
                  });
                },
                controller: controller,
                count: 3,
                effect: SlideEffect(
                  dotHeight: 8,
                  dotWidth: 25,
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  controller.jumpToPage(activeIndex);
                  setState(() {
                    activeIndex++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xff001D70),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        "Continue",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed("login_choice_page");
                },
                child: Text(
                  "Skip For Now",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff001D70),
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset("assets/images/i2.png"),
              SizedBox(height: 30),
              Text(
                "Buy in Circles",
                style: GoogleFonts.montserrat(
                    color: Color(0xff001D70),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "Enjoy the shopping on our app\nwith new product & offers.",
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 20),
              SmoothPageIndicator(
                onDotClicked: (i) {
                  setState(() {
                    activeIndex = i;
                  });
                },
                controller: controller,
                count: 3,
                effect: SlideEffect(
                  dotHeight: 8,
                  dotWidth: 25,
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  controller.jumpToPage(activeIndex);

                  setState(() {
                    activeIndex++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xff001D70),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        "Continue",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed("login_choice_page");
                },
                child: Text(
                  "Skip For Now",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff001D70),
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset("assets/images/i3.png"),
              SizedBox(height: 30),
              Text(
                "Get Delivered To Home ",
                style: GoogleFonts.montserrat(
                    color: Color(0xff001D70),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "Enjoy the shopping on our app\nwith new product & offers.",
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 20),
              SmoothPageIndicator(
                onDotClicked: (i) {
                  setState(() {
                    activeIndex = i;
                  });
                },
                controller: controller,
                count: 3,
                effect: SlideEffect(
                  dotHeight: 8,
                  dotWidth: 25,
                ),
              ),

              // AnimatedSmoothIndicator(
              //   activeIndex: activeIndex,
              //   count: 3,
              //   effect: SlideEffect(
              //     dotHeight: 8,
              //     dotWidth: 25,
              //   ),
              //   onDotClicked: (i) {
              //     setState(() {
              //       activeIndex = i;
              //     });
              //   },
              // ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed("login_choice_page");
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xff001D70),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        "Let's Start",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed("login_choice_page");
                },
                child: Text(
                  "Skip For Now",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff001D70),
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
      // body: (activeIndex == 1)
      //     ? Column(
      //         children: [
      //           Image.asset("assets/images/i2.png"),
      //           SizedBox(height: 30),
      //           Text(
      //             "Buy in Circles",
      //             style: GoogleFonts.montserrat(
      //                 color: Color(0xff001D70),
      //                 fontSize: 18,
      //                 fontWeight: FontWeight.bold),
      //           ),
      //           SizedBox(height: 10),
      //           Text(
      //             textAlign: TextAlign.center,
      //             "Enjoy the shopping on our app\nwith new product & offers.",
      //             style: GoogleFonts.montserrat(fontWeight: FontWeight.w300),
      //           ),
      //           SizedBox(height: 20),
      //           AnimatedSmoothIndicator(
      //             activeIndex: activeIndex,
      //             count: 3,
      //             effect: SlideEffect(
      //               dotHeight: 8,
      //               dotWidth: 25,
      //             ),
      //             onDotClicked: (i) {
      //               setState(() {
      //                 activeIndex = i;
      //               });
      //             },
      //           ),
      //           SizedBox(height: 40),
      //           InkWell(
      //             onTap: () {
      //               setState(() {
      //                 activeIndex++;
      //               });
      //             },
      //             child: Container(
      //               padding: EdgeInsets.all(10),
      //               height: 40,
      //               margin: EdgeInsets.only(left: 20, right: 20),
      //               width: double.infinity,
      //               decoration: BoxDecoration(
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: Colors.black,
      //                     blurRadius: 3,
      //                     spreadRadius: 0,
      //                   )
      //                 ],
      //                 color: Color(0xff001D70),
      //                 borderRadius: BorderRadius.circular(30),
      //               ),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Spacer(),
      //                   Text(
      //                     "Continue",
      //                     style: GoogleFonts.montserrat(
      //                         color: Colors.white,
      //                         fontWeight: FontWeight.bold,
      //                         fontSize: 12),
      //                   ),
      //                   Spacer(),
      //                   Icon(
      //                     Icons.arrow_forward_ios_rounded,
      //                     color: Colors.white,
      //                     size: 13,
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //           SizedBox(height: 10),
      //           TextButton(
      //             onPressed: () {
      //               Navigator.of(context)
      //                   .pushReplacementNamed("login_choice_page");
      //             },
      //             child: Text(
      //               "Skip For Now",
      //               style: GoogleFonts.montserrat(
      //                   color: Color(0xff001D70),
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 12),
      //             ),
      //           ),
      //         ],
      //       )
      //     : (activeIndex == 2)
      //         ? Column(
      //             children: [
      //               Image.asset("assets/images/i3.png"),
      //               SizedBox(height: 30),
      //               Text(
      //                 "Get Delivered To Home ",
      //                 style: GoogleFonts.montserrat(
      //                     color: Color(0xff001D70),
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.bold),
      //               ),
      //               SizedBox(height: 10),
      //               Text(
      //                 textAlign: TextAlign.center,
      //                 "Enjoy the shopping on our app\nwith new product & offers.",
      //                 style:
      //                     GoogleFonts.montserrat(fontWeight: FontWeight.w300),
      //               ),
      //               SizedBox(height: 20),
      //               AnimatedSmoothIndicator(
      //                 activeIndex: activeIndex,
      //                 count: 3,
      //                 effect: SlideEffect(
      //                   dotHeight: 8,
      //                   dotWidth: 25,
      //                 ),
      //                 onDotClicked: (i) {
      //                   setState(() {
      //                     activeIndex = i;
      //                   });
      //                 },
      //               ),
      //               SizedBox(height: 40),
      //               InkWell(
      //                 onTap: () {
      //                   Navigator.of(context)
      //                       .pushReplacementNamed("login_choice_page");
      //                 },
      //                 child: Container(
      //                   padding: EdgeInsets.all(10),
      //                   height: 40,
      //                   margin: EdgeInsets.only(left: 20, right: 20),
      //                   width: double.infinity,
      //                   decoration: BoxDecoration(
      //                     boxShadow: [
      //                       BoxShadow(
      //                         color: Colors.black,
      //                         blurRadius: 3,
      //                         spreadRadius: 0,
      //                       )
      //                     ],
      //                     color: Color(0xff001D70),
      //                     borderRadius: BorderRadius.circular(30),
      //                   ),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Spacer(),
      //                       Text(
      //                         "Let's Start",
      //                         style: GoogleFonts.montserrat(
      //                             color: Colors.white,
      //                             fontWeight: FontWeight.bold,
      //                             fontSize: 12),
      //                       ),
      //                       Spacer(),
      //                       Icon(
      //                         Icons.arrow_forward_ios_rounded,
      //                         color: Colors.white,
      //                         size: 13,
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(height: 10),
      //               TextButton(
      //                 onPressed: () {
      //                   Navigator.of(context)
      //                       .pushReplacementNamed("login_choice_page");
      //                 },
      //                 child: Text(
      //                   "Skip For Now",
      //                   style: GoogleFonts.montserrat(
      //                       color: Color(0xff001D70),
      //                       fontWeight: FontWeight.bold,
      //                       fontSize: 12),
      //                 ),
      //               ),
      //             ],
      //           )
      //         : Column(
      //             children: [
      //               Image.asset("assets/images/image.png"),
      //               SizedBox(height: 30),
      //               Text(
      //                 "Enjoy Shopping",
      //                 style: GoogleFonts.montserrat(
      //                     color: color,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.bold),
      //               ),
      //               SizedBox(height: 10),
      //               Text(
      //                 textAlign: TextAlign.center,
      //                 "Enjoy the shopping on our app\nwith new product & offers.",
      //                 style:
      //                     GoogleFonts.montserrat(fontWeight: FontWeight.w300),
      //               ),
      //               SizedBox(height: 20),
      //               AnimatedSmoothIndicator(
      //                 activeIndex: activeIndex,
      //                 count: 3,
      //                 effect: SlideEffect(
      //                   dotHeight: 8,
      //                   dotWidth: 25,
      //                 ),
      //                 onDotClicked: (i) {
      //                   setState(() {
      //                     activeIndex = i;
      //                   });
      //                 },
      //               ),
      //               SizedBox(height: 40),
      //               InkWell(
      //                 onTap: () {
      //                   setState(() {
      //                     activeIndex++;
      //                   });
      //                 },
      //                 child: Container(
      //                   padding: EdgeInsets.all(10),
      //                   height: 40,
      //                   margin: EdgeInsets.only(left: 20, right: 20),
      //                   width: double.infinity,
      //                   decoration: BoxDecoration(
      //                     boxShadow: [
      //                       BoxShadow(
      //                         color: Colors.black,
      //                         blurRadius: 3,
      //                         spreadRadius: 0,
      //                       )
      //                     ],
      //                     color: Color(0xff001D70),
      //                     borderRadius: BorderRadius.circular(30),
      //                   ),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Spacer(),
      //                       Text(
      //                         "Continue",
      //                         style: GoogleFonts.montserrat(
      //                             color: Colors.white,
      //                             fontWeight: FontWeight.bold,
      //                             fontSize: 12),
      //                       ),
      //                       Spacer(),
      //                       Icon(
      //                         Icons.arrow_forward_ios_rounded,
      //                         color: Colors.white,
      //                         size: 13,
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(height: 10),
      //               TextButton(
      //                 onPressed: () {
      //                   Navigator.of(context)
      //                       .pushReplacementNamed("login_choice_page");
      //                 },
      //                 child: Text(
      //                   "Skip For Now",
      //                   style: GoogleFonts.montserrat(
      //                       color: Color(0xff001D70),
      //                       fontWeight: FontWeight.bold,
      //                       fontSize: 12),
      //                 ),
      //               ),
      //             ],
      //           ),
    );
  }
}