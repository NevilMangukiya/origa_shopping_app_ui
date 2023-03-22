// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globals/globals.dart';
import '../../../models/categoryModel.dart';

class CategoryDetailsPage extends StatefulWidget {
  const CategoryDetailsPage({Key? key}) : super(key: key);

  @override
  State<CategoryDetailsPage> createState() => _CategoryDetailsPageState();
}

class _CategoryDetailsPageState extends State<CategoryDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: color,
          elevation: 0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("menu_page");
            },
            child: Icon(Icons.arrow_back),
          ),
          title: Text(
            "Categories",
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    "Discover out items & products.",
                    style:
                        GoogleFonts.montserrat(color: greyColor, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey.shade300,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: ListView(
                children: [
                  ExpansionPanelList.radio(
                    children: items
                        .map(
                          (e) => ExpansionPanelRadio(
                            canTapOnHeader: true,
                            headerBuilder: (context, bool isExpanded) =>
                                ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(e.image),
                                    ),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.red, width: 3)),
                              ),
                              title: Text(
                                e.title,
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: color,
                                    fontSize: 14),
                              ),
                              subtitle: Text(
                                e.subtitle,
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    color: greyColor,
                                    fontSize: 12),
                              ),
                            ),
                            body: Container(
                              padding: EdgeInsets.all(20),
                              height: 120,
                              width: double.infinity,
                              color: Colors.grey.shade100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: category2
                                    .map(
                                      (e) => Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  "grocery_category_page");
                                              // Navigator.of(context!).pushNamed(e.routes);
                                            },
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(e.image),
                                                  ),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Colors.red,
                                                      width: 3)),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            e.name,
                                            style: GoogleFonts.montserrat(
                                                color: color,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                            value: Text("Fsx"),
                          ),
                        )
                        .toList(),
                    dividerColor: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
