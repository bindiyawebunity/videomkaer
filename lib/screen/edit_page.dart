import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videomaker/screen/save_video_page.dart';
import '../model/color.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
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
          "Edit",
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
                      builder: (context) => const SaveVideoPage(),
                    ));
              },
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              )),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 60.0, right: 60, top: 20),
              child: SizedBox(
                height: 500,
                width: double.infinity,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/homePage.png",
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 120),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.crop,
                      color: Colors.white,
                    )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.settings_overscan,
                      color: Colors.white,
                    )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Icon(
                      FontAwesomeIcons.filter,
                      color: Colors.white,
                    )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Icon(
                      CupertinoIcons.arrow_2_squarepath,
                      color: Colors.white,
                    )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Icon(
                      FontAwesomeIcons.textHeight,
                      color: Colors.white,
                    )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Icon(
                      FontAwesomeIcons.phoenixFramework,
                      color: Colors.white,
                    )),
                  ),
                  const SizedBox(width: 30),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35.0, top: 10),
              child: Row(
                children: [
                  Text(
                    "Crop",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Canvas",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Effect",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Text",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Text(
                    "Frame",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
