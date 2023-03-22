// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../globals/globals.dart';

class Category {
  final String name;
  final String image;
  final String routes;

  Category({
    required this.name,
    required this.image,
    required this.routes,
  });
}

List categoryList = [
  Category(
      name: "Grocery",
      image: "assets/images/cat1.jpg",
      routes: "grocery_details_page"),
  Category(name: "Households", image: "assets/images/cat4.jpg", routes: ""),
  Category(name: "Electronics", image: "assets/images/cat3.jpeg", routes: ""),
  Category(name: "Fashion", image: "assets/images/cat1.jpg", routes: ""),
  Category(name: "Beauty", image: "assets/images/cat2.jpg", routes: ""),
];

class Category2 {
  final String name;
  final String image;
  final String routes;

  Category2({
    required this.name,
    required this.image,
    required this.routes,
  });
}

List category2 = [
  Category2(
    name: "Vegetables",
    image: "assets/images/cat1.jpg",
    routes: "grocery_category_page",
  ),
  Category2(
      name: "Fruits",
      image: "assets/images/cat1.jpg",
      routes: "grocery_category_page"),
  Category2(
      name: "Milk & Cheese",
      image: "assets/images/cat1.jpg",
      routes: "grocery_category_page"),
];
List categories = [
  Category2(name: "Meat", image: "assets/images/cat1.jpg", routes: ""),
  Category2(
      name: "Bread & Bakery", image: "assets/images/cat1.jpg", routes: ""),
];

class Step {
  Step(this.title, this.subtitle, this.image, this.column,
      [this.isExpanded = false]);
  String title;
  String subtitle;
  String image;
  Column column;
  bool isExpanded;
}

// Future<List<Step>> getSteps() async {
List items = [
  Step(
    "Grocery",
    "5 Sub-categories",
    "assets/images/cat1.jpg",
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: category2
              .map(
                (e) => Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(e.image),
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 3)),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      e.name,
                      style: TextStyle(
                          color: color,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 35),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red, width: 3)),
                ),
                SizedBox(height: 5),
                Text(
                  "Meat",
                  style: TextStyle(
                      color: color, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red, width: 3)),
                ),
                SizedBox(height: 5),
                Text(
                  "Bread & Bakery",
                  style: TextStyle(
                      color: color, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ),
  Step(
    "Fashion",
    "8 Sub categories",
    "assets/images/cat2.jpg",
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: category2
              .map(
                (e) => Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(e.image),
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 3)),
                    ),
                    SizedBox(height: 5),
                    Text(
                      e.name,
                      style: TextStyle(
                          color: color,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 35),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red, width: 3)),
                ),
                SizedBox(height: 5),
                Text(
                  "Meat",
                  style: TextStyle(
                      color: color, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red, width: 3)),
                ),
                SizedBox(height: 5),
                Text(
                  "Bread & Bakery",
                  style: TextStyle(
                      color: color, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ),
  Step(
    "Home Appliances",
    "13 Sub-categories",
    "assets/images/cat4.jpg",
    Column(),
  ),
  Step(
    "Electronics ",
    "8 Sub-categories",
    "assets/images/cat3.jpeg",
    Column(),
  ),
];