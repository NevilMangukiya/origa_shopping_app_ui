import 'package:flutter/material.dart';

class Global {
  static String mapLocation = "";
  static double lat = 0;
  static double long = 0;

  static Color appColor = const Color(0xff34A853);
}

Color color = Color(0xff001D70);
Color greyColor = Color(0xff6B738D);
int login = 0;
bool isForgot = false;

List carouselSlider = [
  'assets/images/ca2.jpg',
  'assets/images/ca3.png',
  'assets/images/ca1.jpg',
  'assets/images/ca4.jpeg',
];
List tomatoSlider = [
  "assets/images/tomato.png",
  "assets/images/tomato.png",
  "assets/images/tomato.png",
  "assets/images/tomato.png",
];

/// TODO COUNTRY CODE
// IntlPhoneField(
// decoration: InputDecoration(
// isDense: true,
// contentPadding:
// EdgeInsets.only(left: 10, top: 5, bottom: 18),
// hintText: "Your Phone Number",
// hintStyle: GoogleFonts.montserrat(
// color: greyColor,
// fontSize: 12,
// ),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(30),
// ),
// ),
// ),
///

/*CircleList(
rotateMode: RotateMode.stopRotate,
// showInitialAnimation: true,
// innerRadius: 50,
outerRadius: 130,
animationSetting: AnimationSetting(),
origin: Offset(0, 0),
centerWidget: Container(
alignment: Alignment.center,
height: 1115,
width: 1050,
decoration: BoxDecoration(
// color: Colors.red,
border: Border.all(
color: Color(0xff00F300),
width: 7,
),
shape: BoxShape.circle,
),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
"8",
style: GoogleFonts.montserrat(
color: Color(0xff242C46),
fontWeight: FontWeight.bold,
fontSize: 30,
),
),
Text(
"Joined People",
style: GoogleFonts.montserrat(
color: Color(0xff242C46),
fontWeight: FontWeight.bold,
fontSize: 8,
),
),
Text(
"of Total 12",
style: GoogleFonts.montserrat(
color: Color(0xff242C46),
fontWeight: FontWeight.w400,
fontSize: 8,
),
),
],
)),
children: [
...List.generate(
12,
(index) => ((index == 8 ||
index == 7 ||
index == 6) ||
index == 5)
? DottedBorder(
borderType: BorderType.Circle,
child: Container(
height: 35,
width: 40,
decoration:
BoxDecoration(shape: BoxShape.circle),
child: Icon(
Icons.add,
color: Colors.grey,
),
),
)
: CircleAvatar(
backgroundColor: Colors.red,
backgroundImage: AssetImage(
"assets/images/person/p1.png"),
),
),
],
),
*/

/// TEXTFORM FEILD
///
/*
TextFormField(
decoration: InputDecoration(
contentPadding: EdgeInsets.only(left: 20, top: 20),
hintText: "xxxx xxxx xxxx xxxx",
hintStyle: GoogleFonts.montserrat(color: Colors.grey),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(30),
),
),
),
*/
/// TDOD IMAGE ADD
// CircleAvatar(
// radius: 100,
// child: Center(
// child: image == null
// ? const Text(
// "ADD IMAGE",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: 10),
// )
// : Container(
// height: 250,
// width: double.infinity,
// decoration: BoxDecoration(
// color: Colors.white.withOpacity(0.7),
// ),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(50),
// child: Image.memory(
// image!,
// fit: BoxFit.cover,
// ),
// ),
// ),
// ),

// ),

bool isOpen = false;
bool joinGroup = false;
bool addAddress = false;
bool isChangeCircle = false;
