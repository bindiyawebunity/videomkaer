import 'package:flutter/material.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';

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
      backgroundColor: ColorFile.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 30),
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.white)),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120, top: 30),
                  child: Text(
                    StringFile.searchPage,
                    style: TextStyleFile.searchPage,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: search,
              decoration: InputDecoration(
                  hintText: "Template name or category",
                  fillColor: Colors.grey,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 600,
              width: double.infinity,
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(
                      Icons.trending_up,
                      color: Colors.white,
                    ),
                    title: Text(
                      name[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
