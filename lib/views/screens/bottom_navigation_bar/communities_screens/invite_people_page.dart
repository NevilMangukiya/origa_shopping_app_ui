// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../globals/globals.dart';

class InvitePeoplePage extends StatefulWidget {
  const InvitePeoplePage({Key? key}) : super(key: key);

  @override
  State<InvitePeoplePage> createState() => _InvitePeoplePageState();
}

class _InvitePeoplePageState extends State<InvitePeoplePage> {
  // bool checkBox = false;
  // bool checkBox5 = false;
  // bool checkBox2 = false;
  // bool checkBox3 = false;
  // bool checkBox4 = false;

  final controller = TextEditingController();
  List<InvitePeople> books = invitePeople;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  // SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 90),
                  Align(
                    child: Text(
                      "Invite People",
                      style: GoogleFonts.montserrat(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed("invite_communities_page");
                    },
                    child: Icon(Icons.emoji_people_sharp),
                  ),
                ],
              ),
              Text(
                "10 People are selected",
                style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 11),
              ),
              SizedBox(height: 10),
              Container(
                // margin: EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  onChanged: searchBook,
                  decoration: InputDecoration(
                    hintText: "Search for a someone...",
                    hintStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    contentPadding:
                        EdgeInsets.only(left: 10, right: 10, top: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 12,
                child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, i) {
                      final book = books[i];
                      return ListTile(
                        title: Text(
                          book.name,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(book.image),
                        ),
                        trailing: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          checkColor: Colors.white,
                          activeColor: color,
                          onChanged: (val) {
                            setState(() {
                              book.check = val!;
                            });
                          },
                          value: book.check,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.all(10),
          height: 70,
          width: _width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -5),
                blurRadius: 3,
                color: Colors.grey.withOpacity(0.5),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 40),
                  primary: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed("family_group_page");
                },
                child: Text(
                  "Invite People",
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
    );
  }

  void searchBook(String query) {
    final suggest = invitePeople.where((book) {
      final bookTitle = book.name.toLowerCase();
      final input = query.toLowerCase();

      return bookTitle.contains(input);
    }).toList();
    setState(() {
      books = suggest;
    });
  }
}

class InvitePeople {
  final String name;
  final String image;
  late bool check;

  InvitePeople({
    required this.name,
    required this.image,
    required this.check,
  });
}

List<InvitePeople> invitePeople = [
  InvitePeople(
      name: 'Ahmed Emad', image: "assets/images/person/p1.jpg", check: false),
  InvitePeople(
      name: 'Fahd abdul', image: "assets/images/person/p2.jpg", check: false),
  InvitePeople(
      name: 'Abdle Rehman', image: "assets/images/person/p3.jpg", check: false),
  InvitePeople(
      name: 'Ahmed Emad', image: "assets/images/person/p4.jpg", check: false),
  InvitePeople(
      name: 'Ahmed Emad', image: "assets/images/person/p1.jpg", check: false),
  InvitePeople(
      name: 'Fahd abdul', image: "assets/images/person/p2.jpg", check: false),
  InvitePeople(
      name: 'Abdle Rehman', image: "assets/images/person/p3.jpg", check: false),
  InvitePeople(
      name: 'Ahmed Emad', image: "assets/images/person/p4.jpg", check: false),
  InvitePeople(
      name: 'Fahd abdul', image: "assets/images/person/p2.jpg", check: false),
  InvitePeople(
      name: 'Abdle Rehman', image: "assets/images/person/p3.jpg", check: false),
  InvitePeople(
      name: 'Fahd abdul', image: "assets/images/person/p2.jpg", check: false),
  InvitePeople(
      name: 'Abdle Rehman', image: "assets/images/person/p3.jpg", check: false),
];
