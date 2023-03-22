// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();
  List<InvitePeople> books = invitePeople;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEARCH BAR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: controller,
            onChanged: searchBook,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, i) {
                  final book = books[i];
                  return ListTile(
                    title: Text(book.name),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(book.image),
                    ),
                    trailing: Checkbox(
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

class Book {
  final String title;

  Book({
    required this.title,
  });
}

List<Book> allBooks = [
  Book(title: "Ahmed"),
  Book(title: "jya"),
  Book(title: "se"),
  Book(title: "heee"),
  Book(title: "sdd"),
  Book(title: "edfre"),
];

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
];