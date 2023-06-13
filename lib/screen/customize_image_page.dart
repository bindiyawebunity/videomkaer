import 'package:flutter/material.dart';
import 'package:videomaker/screen/selected_image.dart';

import '../model/color.dart';

class CustomizeImagePage extends StatefulWidget {
  const CustomizeImagePage({Key? key}) : super(key: key);

  @override
  State<CustomizeImagePage> createState() => _CustomizeImagePageState();
}

class _CustomizeImagePageState extends State<CustomizeImagePage> {
  List image = [
    "assets/Rectangle 2.png",
    "assets/Rectangle 2 (1).png",
    "assets/Rectangle 2 (2).png",
    "assets/Rectangle 2 (3).png",
    "assets/Rectangle 2 (4).png",
    "assets/Rectangle 2 (5).png",
    "assets/Rectangle 2 (6).png",
    "assets/Rectangle 2 (7).png",
    "assets/Rectangle 2 (8).png",
    "assets/Rectangle 2 (10).png",
    "assets/Rectangle 2 (11).png",
    "assets/Rectangle 2 (12).png",
    "assets/Rectangle 2 (13).png",
    "assets/Rectangle 2 (14).png",
    "assets/Rectangle 2 (15).png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: ColorFile.iconColor,
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
              icon: Icon(
                Icons.check,
                color: ColorFile.iconColor,
              )),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: image.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10.0, crossAxisSpacing: 10.0),
        itemBuilder: (context, index) {
          return SizedBox(
              height: 50,
              width: 50,
              child: Image(
                image: AssetImage(image[index]),
                fit: BoxFit.cover,
              ));
        },
      ),
    );
  }
}
