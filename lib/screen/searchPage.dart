import 'package:flutter/material.dart';
import 'package:videomaker/model/color.dart';

import '../model/String.dart';
import '../model/TextStyle.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();
  List name = [
    "Journey",
    "Motivation",
    "Outfit",
    "Relax",
    "Sports",
    "Dance",
    "Romantic",
    "Funny",
    "Animal",
    "Vlog",
    "Fashion"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorFile.backGroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        title: Text(
          StringFile.searchPage,
          style: TextStyleFile.searchPage,
        ),
      ),
      backgroundColor: ColorFile.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: search,
                  decoration: InputDecoration(
                      hintText: "Template name or category",
                      fillColor: Colors.grey,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 600,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.trending_up,
                        color: ColorFile.iconColor,
                      ),
                      title: Text(
                        name[index],
                        style: TextStyle(color: ColorFile.textColor),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
