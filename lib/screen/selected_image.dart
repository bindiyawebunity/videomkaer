import 'package:flutter/material.dart';
import 'package:videomaker/screen/edit_page.dart';

import '../model/color.dart';

class SelectedImagePage extends StatefulWidget {
  const SelectedImagePage({Key? key}) : super(key: key);

  @override
  State<SelectedImagePage> createState() => _SelectedImagePageState();
}

class _SelectedImagePageState extends State<SelectedImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      appBar: AppBar(
        backgroundColor: ColorFile.backGroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            )),
        title: Center(
            child: Text(
          "Select Photo",
          style: TextStyle(
              color: ColorFile.textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectedImagePage(),
                    ));
              },
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              )),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/Rectangle 2.png",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color(0xFF040404).withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditPage(),
                              ));
                        },
                        child: const Text(
                          "Edit",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
